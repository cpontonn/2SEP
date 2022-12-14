function [Database] = MusICDatabaseGeneration(BiomechanicalModel, AnalysisParameters)
% Generation of the database used in the MusIC method
%   
%   INPUT
%   - Human_model: osteo-articular model (see the Documentation for the structure)
%   - Muscles: set of muscles (see the Documentation for the structure)
%   - C: muscular coupling matrix
%   - Moment_Arms: moment arms matrix
%   - AnalysisParameters: parameters of the musculoskeletal analysis,
%   automatically generated by the graphic interface 'Analysis' 
%   OUTPUT
%   - Database: database used in the MusIC method
%________________________________________________________
%
% Licence
% Toolbox distributed under GPL 3.0 Licence
%________________________________________________________
%
% Authors : Antoine Muller, Charles Pontonnier, Pierre Puchaud and
% Georges Dumont
%________________________________________________________

%% Parameters of the database
C_database = 100; % Nm, reference couples
nb_data = AnalysisParameters.Muscles.DatabaseDensity; %number of different joint coordinates in the database

%% loading variables
Human_model = BiomechanicalModel.OsteoArticularModel;
Muscles = BiomechanicalModel.Muscles;
C = BiomechanicalModel.Coupling;
Moment_Arms = BiomechanicalModel.MomentArms;

if isfield(BiomechanicalModel,'Generalized_Coordinates')
    q_map_unsix=BiomechanicalModel.Generalized_Coordinates.q_map_unsix;
    l_inf1=[Human_model.limit_inf]';
    l_sup1=[Human_model.limit_sup]';
    % to handle infinity
    ind_infinf=not(isfinite(l_inf1));
    ind_infsup=not(isfinite(l_sup1));
    % tip to handle inflinity with a complex number.
    l_inf1(ind_infinf)=1i;
    l_sup1(ind_infsup)=1i;
    % new indexing
    l_inf1=q_map_unsix'*l_inf1;
    l_sup1=q_map_unsix'*l_sup1;
    %find 1i to replay by inf
    l_inf1(l_inf1==1i)=-inf;
    l_sup1(l_sup1==1i)=+inf;
else
    l_inf1=[Human_model.limit_inf]';
    l_sup1=[Human_model.limit_sup]';
end


Fmax = [Muscles.f0]';
nb_muscles = numel(Muscles);
C=C; %#ok<ASGSL> % useful for parallel computation

%% Generation of each subdatabase
% options = optimoptions('fmincon','algorithm','sqp','Display','notify','Tolx',1e-9,'Tolfun',1e-9,'MaxFunEvals',20000,'Maxiter',600,'UseParallel',false,'Display','off');%optimisation solver options
options = optimoptions('fmincon','algorithm','sqp','Display','notify','Display','off');%optimisation solver options

warning('off','all')
list_art = find(any(C,2)); % list of joints containing one muscle
tic
parfor ii = 1:numel(list_art) % subdatabase i
    list_coupling = [];
    art = list_art(ii);
    art_mus = []; % list of muscles which actuate this joint
    for p=1:nb_muscles
        if ~isnumeric(Moment_Arms{art,p}) %#ok<PFBNS>
            art_mus=[art_mus;p];
        end
    end
    %% Definition of joint postures to achieve (Q)
    Q=cell(size(C,1),1); % initialisation
    % Set of joint positions generation 
    for jj=1:numel(Q)
        if C(art,jj) == 1
            if jj==art
                Q{jj}=linspace(l_inf1(jj),l_sup1(jj),nb_data(1))'; %#ok<PFBNS>
            else
                Q{jj}=linspace(l_inf1(jj),l_sup1(jj),nb_data(2))';
            end
        else
            Q{jj}=0;
        end
    end
    % List of each joint configuration
    list_str = Q(1);
    for jj=2:numel(Q)
        list_str = [list_str Q(jj)];
    end
    X = cartprod(list_str{:});
    % initilisation of the database
    if sum(C(list_art(ii),:)) == 1
        list_fim_init = {num2str(nb_data(1)),1};
    else
        list_coupling = find(C(list_art(ii),:));
        if list_coupling(1) == art
            list_fim_init = {nb_data(1)};
        else
            list_fim_init = {nb_data(2)};
        end
        for p=list_coupling(2:end)
            if p == art
            	list_fim_init = [list_fim_init {nb_data(1)}];
            else
            	list_fim_init = [list_fim_init {nb_data(2)}];
            end
        end
    end
    Database(ii).RatioPos = cell(list_fim_init{:}); 
    Database(ii).RatioNeg = cell(list_fim_init{:});
    %% Subdatabase generation for each joint configuration 
    for SigneSigma = [-1,1] % alpha+ and alpha-
        Aeq=zeros(numel(list_art),nb_muscles); %#ok<PFBNS>
        for jj=1:size(X,1) % for each joint configuration 
            conf_q = X(jj,:)';
            % moment arm computation
            c=0;
            for m_n=1:numel(list_art)
                m=list_art(m_n);
                c=c+1;
                for k=1:nb_muscles
                    if isnumeric(Moment_Arms{m,k})
                        Aeq(c,k)=0;
                    else
                        Aeq(c,k) = Moment_Arms{m,k}(conf_q);
                    end
                end
            end
            % Optimization parameters
            beq=SigneSigma*C_database; % we assigned the reference torque to the i joint
            nb_muscles_art = numel(art_mus);
            Fmin = zeros(nb_muscles_art,1);
            F0 = zeros(nb_muscles_art,1);
            Fmax_art = Fmax(art_mus,:); %#ok<PFBNS>
            % Optimization
            [Fopt] = AnalysisParameters.Muscles.Costfunction(F0, Aeq(ii,art_mus), beq, Fmin, [], options, AnalysisParameters.Muscles.CostfunctionOptions, Fmax_art); %#ok<PFBNS>
            Aopt = Fopt./Fmax_art;
            % we fulfill the database(for the secondary joints)
            if beq > 0
                Database(ii).RatioPos{jj} = [Aopt/sum(Aopt);beq];
            elseif beq < 0
                Database(ii).RatioNeg{jj} = [Aopt/sum(Aopt);beq];
            end
        end
    end
    % we save other info
    Database(ii).art_mus = art_mus;
    Database(ii).Q = Q;
    Database(ii).list_coupling = list_coupling;ii
end

end

