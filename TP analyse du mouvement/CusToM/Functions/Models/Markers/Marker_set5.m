function [Markers]=Marker_set5(varargin)
% Definition of the markers set used in XSENS
%
%   OUTPUT
%   - Markers: set of markers (see the Documentation for the structure) 
%________________________________________________________
%
% Licence
% Toolbox distributed under GPL 3.0 Licence
%________________________________________________________
%
% Authors : Antoine Muller, Charles Pontonnier, Pierre Puchaud and
% Georges Dumont
%________________________________________________________

s=cell(0);

% TRUNK & HEAD
s=[s;{  'pRightASI' 'RFWT' {'On';'Off';'On'}; ...
        'pLeftASI' 'LFWT' {'On';'Off';'On'};  ...
        'pRightCSI' 'RBWT' {'On';'Off';'On'}; ...
        'pLeftCSI' 'LBWT' {'On';'Off';'On'};  ...
        'pSacrum' 'Pelvis_SacrumJointNode' {'Off';'On';'Off'}; ...
        'pL5SpinalProcess' 'Pelvis_L5JointNode' {'Off';'On';'Off'}; ... 
        'pT12SpinalProcess' 'T12' {'Off';'On';'Off'}; ...
        'pT8SpinalProcess' 'T8' {'Off';'On';'Off'}; ...
        'pC7SpinalProcess' 'C7' {'On';'On';'Off'}; ...
        'pPX' 'STRN' {'On';'Off';'On'}; ...
        'pIJ' 'CLAV'  {'Off';'Off';'Off'}; ...%not 100% sure
        'pTopOfHead' 'Skull_TopOfHead' {'Off';'Off';'On'}; ...
        'pRightAuricularis' 'RMHD' {'Off';'Off';'On'}; ...
        'pLeftAuricularis' 'LMHD' {'Off';'Off';'On'};...
        'pBackOfHead' 'Skull_NeckNode' {'Off';'On';'On'}; ...
        'pRightAcromion' 'RSHO' {'Off';'Off';'On'};...
        'pLeftAcromion' 'LSHO' {'Off';'Off';'On'}; ...
      }];

Side1={'Right';'Left'};
Side2={'R';'L'};
% Arm
for i=1:2
    s=[s;{  ['p' Side1{i} 'ArmLatEpicondyle'] [Side2{i} 'RAD'] {'On';'On';'Off'};...
            ['p' Side1{i} 'ArmMedEpicondyle'] [Side2{i} 'HUM'] {'Off';'Off';'Off'}; ...
            ['p' Side1{i} 'UlnarStyloid'] [Side2{i} 'WRB'] {'Off';'On';'Off'}; ...
            ['p' Side1{i} 'RadialStyloid'] [Side2{i} 'WRA'] {'Off';'Off';'Off'}; ...
            ['p' Side1{i} 'TopOfHand'] [Side2{i} 'CAR1'] {'Off';'Off';'Off'}; ...
            ['p' Side1{i} 'Pinky'] [Side2{i} 'PNK3'] {'Off';'Off';'Off'}; ...
        }];
end

% Leg
for i=1:2
    s=[s;{  ['p' Side1{i} 'KneeLatEpicondyle'] [Side2{i} 'KNE'] {'Off';'Off';'On'};...
            ['p' Side1{i} 'KneeMedEpicondyle'] [Side2{i} 'KNI'] {'Off';'On';'On'}; ...
            ['p' Side1{i} 'LatMalleolus'] [Side2{i} 'ANE'] {'Off';'On';'Off'};...
            ['p' Side1{i} 'MedMalleolus'] [Side2{i} 'ANI'] {'Off';'Off';'Off'}; ...
            ['p' Side1{i} 'FirstMetatarsal'] [Side2{i} 'TAR'] {'Off';'Off';'Off'}; ...
            ['p' Side1{i} 'FifthMetatarsal'] [Side2{i} 'TARI'] {'Off';'On';'On'};...
            ['p' Side1{i} 'HeelCenter'] [Side2{i} 'HEE'] {'Off';'On';'Off'}; ...
            ['p' Side1{i} 'Toe'] [Side2{i} 'TOE'] {'Off';'Off';'Off'}; ...
        }];
end

Markers=struct('name',{s{:,1}}','anat_position',{s{:,2}}','calib_dir',{s{:,3}}'); %#ok<CCAT1>

end