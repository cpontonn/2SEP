function [MuscleForcesComputationResults] = ForcesComputationOptiNum(filename, BiomechanicalModel, AnalysisParameters)
% Computation of the muscle forces estimation step by using an optimization method
%
%	Based on :
%	- Crowninshield, R. D., 1978.
%	Use of optimization techniques to predict muscle forces. Journal of Biomechanical Engineering, 100(2), 88-92.
%
%   INPUT
%   - filename: name of the file to process (character string)
%   - BiomechanicalModel: musculoskeletal model
%   - AnalysisParameters: parameters of the musculoskeletal analysis,
%   automatically generated by the graphic interface 'Analysis'
%   OUTPUT
%   - MuscleForcesComputationResults: results of the muscle forces
%   estimation step (see the Documentation for the structure)
%________________________________________________________
%
% Licence
% Toolbox distributed under GPL 3.0 Licence
%________________________________________________________
%
% Authors : Antoine Muller, Charles Pontonnier, Pierre Puchaud and
% Georges Dumont
%________________________________________________________
disp(['Forces Computation (' filename ') ...'])

%% Loading variables

load([filename '/ExperimentalData.mat']); %#ok<LOAD>
time = ExperimentalData.Time;
freq = 1/time(2);

Muscles = BiomechanicalModel.Muscles;
load([filename '/InverseKinematicsResults']) %#ok<LOAD>
load([filename '/InverseDynamicsResults']) %#ok<LOAD>



q=InverseKinematicsResults.JointCoordinates;
torques =InverseDynamicsResults.JointTorques;


Nb_q=size(q,1);
Nb_frames=size(torques,2);

%existing muscles
idm = logical([Muscles.exist]);
Nb_muscles=numel(Muscles(idm));

%% computation of muscle moment arms from joint posture
L0=ones(Nb_muscles,1);
Ls=ones(Nb_muscles,1);
for i=1:Nb_muscles
    Muscle_i = BiomechanicalModel.Muscles(i);
    if ~isempty(Muscle_i.ls) && ~isempty(Muscle_i.l0)
        L0(i) = Muscle_i.l0;
        Ls(i) = Muscle_i.ls;
    end
end
Lmt=zeros(Nb_muscles,Nb_frames);
R=zeros(Nb_q,Nb_muscles,Nb_frames);
for i=1:Nb_frames % for each frames
    Lmt(:,i)   =   MuscleLengthComputationNum(BiomechanicalModel,q(:,i)); %dependant of every q (q_complete)
    R(:,:,i)    =   MomentArmsComputationNum(BiomechanicalModel,q(:,i),0.0001); %depend on reduced set of q (q_red)
end

Lm = Lmt./(Ls./L0+1);
% Muscle length ratio to optimal length
Lm_norm = Lm./L0;
% Muscle velocity
Vm = gradient(Lm_norm)*freq;

[idxj,~]=find(sum(R(:,:,1),2)~=0);

%% Computation of muscle forces (optimization)
% Optimisation parameters
Amin = zeros(Nb_muscles,1);
A0  = 0.5*ones(Nb_muscles,1);
for i=1:size(idm,2)
    Muscles(i).f0 = Muscles(i).f0;
end
Fmax = [Muscles(idm).f0]';
Amax = ones(Nb_muscles,1);
Fopt = zeros(Nb_muscles,Nb_frames);
Aopt = zeros(size(Fopt));
% Muscle Forces Matrices computation
[Fa,Fp]=AnalysisParameters.Muscles.MuscleModel(Lm,Vm,Fmax);

% Solver parameters
options1 =	optimoptions(@fmincon,'Algorithm','sqp','Display','final','GradObj','off','GradConstr','off','TolFun',1e-4,'TolCon',1e-6,'MaxIterations',100000,'MaxFunEvals',100000);
options2 =	optimoptions(@fmincon,'Algorithm','sqp','Display','final','GradObj','off','GradConstr','off','TolFun',1e-4,'TolCon',1e-6,'MaxIterations',1000,'MaxFunEvals',2000000);


h = waitbar(0,['Forces Computation (' filename ')']);

if (isfield(BiomechanicalModel.OsteoArticularModel,'ClosedLoop') && ~isempty([BiomechanicalModel.OsteoArticularModel.ClosedLoop]))   || (~isempty(KinematicDependancy(BiomechanicalModel.OsteoArticularModel)))
    % TO BE CHANGED AFTER CALIBRATION
    k=BiomechanicalModel.GeometricalCalibration.k_calib;
        
    [solid_path1,solid_path2,num_solid,num_markers]=Data_ClosedLoop(BiomechanicalModel.OsteoArticularModel);

    dependancies=KinematicDependancy(BiomechanicalModel.OsteoArticularModel);
    % Closed-loop constraints
    KT=ConstraintsJacobian(BiomechanicalModel,q(:,1),solid_path1,solid_path2,num_solid,num_markers,k,0.0001,dependancies)';
    [idKT,~]=find(sum(KT(:,:,1),2)~=0);
    idq=unique(union(idKT,idxj));
    % Adaptation of variables to closed-loop problem
    A0 = [A0 ; zeros(size(KT,2),1)];
    Aopt = [Aopt; zeros(size(KT,2),Nb_frames)];
    Amin = [Amin ;-inf*ones(size(KT,2),1)];
    Fmax = [Fmax ;inf*ones(size(KT,2),1)];
    Amax = [Amax ;inf*ones(size(KT,2),1)];
    % Moment arms and Active forces
    Aeq = [R(idq,:,1).*Fa(:,1)' KT(idq,:)];
    % Joint Torques
    beq = torques(idq,1) - R(idq,:,1)*Fp(:,1);
    % First frame optimization
    [Aopt(:,1)] = AnalysisParameters.Muscles.Costfunction(A0, Aeq, beq, Amin, Amax, options1, AnalysisParameters.Muscles.CostfunctionOptions, Fa(:,1), Fmax);
    % Muscular activiy
%     A0 = Aopt(:,1);
    Fopt(:,1) = Fa(:,1).*Aopt(1:Nb_muscles,1)+Fp(:,1);
    
    waitbar(1/Nb_frames)
    
    for i=2:Nb_frames % for following frames
        % Closed-loop constraints
        KT=ConstraintsJacobian(BiomechanicalModel,q(:,i),solid_path1,solid_path2,num_solid,num_markers,k,0.0001,dependancies)';
        % Moment arms and Active forces
        Aeq = [R(idq,:,i).*Fa(:,i)' KT(idq,:)];
        % Joint Torques
        beq=torques(idq,i)- R(idq,:,1)*Fp(:,i);
        % Optimization
        [Aopt(:,i)] = AnalysisParameters.Muscles.Costfunction(A0, Aeq, beq, Amin, Amax, options2, AnalysisParameters.Muscles.CostfunctionOptions, Fa(:,i), Fmax);    
        % Muscular activity
%         A0=Aopt(:,i);
        Fopt(:,i) = Fa(:,i).*Aopt(1:Nb_muscles,i)+Fp(:,i);
        
        waitbar(i/Nb_frames)
    end
    
    % Static optimization results
    MuscleForcesComputationResults.MuscleActivations(idm,:) = Aopt(1:Nb_muscles,:);
    MuscleForcesComputationResults.MuscleForces(idm,:) = Fopt;
    MuscleForcesComputationResults.MuscleLengths= Lmt;
    MuscleForcesComputationResults.MuscleLeverArm = R;
    
else
    % Moment arms and Active forces
    Aeq=R(idxj,:,1).*Fa(:,1)';
    % Joint Torques and Passive force
    beq=torques(idxj,1) - R(idxj,:,1)*Fp(:,1);
    % First frame optimization
    [Aopt(:,1)] = AnalysisParameters.Muscles.Costfunction(A0, Aeq, beq, Amin, Amax, options1, AnalysisParameters.Muscles.CostfunctionOptions, Fa(:,1), Fmax);
    % Muscular activity
    A0=Aopt(:,1);
    Fopt(:,1) = Fa(:,1).*Aopt(:,1)+Fp(:,1);
    waitbar(1/Nb_frames)
    
    for i=2:Nb_frames % for folliwing frames
        % Moment arms and Active forces
        Aeq=R(idxj,:,i).*Fa(:,i)';
        % Joint Torques and Passive force
        beq=torques(idxj,i) - R(idxj,:,i)*Fp(:,i);
        % Optimization
        [Aopt(:,i)] = AnalysisParameters.Muscles.Costfunction(A0, Aeq, beq, Amin, Amax, options2, AnalysisParameters.Muscles.CostfunctionOptions, Fa(:,i), Fmax);        
        % Muscular activity
        A0=Aopt(:,i);
        Fopt(:,i) = Fa(:,i).*Aopt(:,i)+Fp(:,i);
        waitbar(i/Nb_frames)
    end
    
    % Static optimization results
    MuscleForcesComputationResults.MuscleActivations(idm,:) = Aopt;
    MuscleForcesComputationResults.MuscleForces(idm,:) = Fopt;
    MuscleForcesComputationResults.MuscleLengths= Lmt;
    MuscleForcesComputationResults.MuscleLeverArm = R;
    
end

close(h)

disp(['... Forces Computation (' filename ') done'])


end