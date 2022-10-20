function [real_markers, nb_frames]=Get_real_markers_Calibration(filename,list_markers, AnalysisParameters)
% Extraction of motion data for the geometrical calibration
%
%   INPUT
%   - filename: name of the file to process (character string)
%   - list_markers: list of the marker names
%   - AnalysisParameters: parameters of the musculoskeletal analysis,
%   automatically generated by the graphic interface 'Analysis' 
%   OUTPUT
%   - real_markers: 3D position of experimental markers
%   - nb_frame: number of frames
%________________________________________________________
%
% Licence
% Toolbox distributed under GPL 3.0 Licence
%________________________________________________________
%
% Authors : Antoine Muller, Charles Pontonnier, Pierre Puchaud and
% Georges Dumont
%________________________________________________________
nb_f = size(filename,1);

if nb_f==1 %% if one c3d for geoemtrical calibration
    filename=filename(1:end-(numel(AnalysisParameters.General.Extension)-1));
    [real_markers, ~, ~, ~,~] = Get_real_markers(filename,list_markers, AnalysisParameters);
else %% Concatenation of c3d files for geometrical calibration only
    real_markers=struct();
    for i=1:numel(filename)
        
        if i==1
            [real_markers, ~, ~, ~,f] = Get_real_markers(filename{i}(1:end-(numel(AnalysisParameters.General.Extension)-1))...
                ,list_markers, AnalysisParameters);
            periode=1/f;
        else
            [real_markers_inter, ~ , Firstframe_inter, Lastframe_inter]=...
                Get_real_markers(filename{i}(1:end-(numel(AnalysisParameters.General.Extension)-1)),...
                list_markers, AnalysisParameters);

            fields = fieldnames(real_markers_inter);
            fields = setdiff(fields,{'name','time'});
            nb_fields = length(fields);
            
            for i_m=1:numel(real_markers_inter)
                if strcmp(real_markers(i_m).name,real_markers_inter(i_m).name)
                    
                    % Concatenation of marker position
                    for i_field = 1:nb_fields
                        cur_field=fields{i_field};
                        real_markers(i_m).(cur_field)  = [real_markers(i_m).(cur_field) ; real_markers_inter(i_m).(cur_field)];
                    end
                    % Extension of time vector array
                    if i_m==1
                        nb_frame_inter = Lastframe_inter-Firstframe_inter+1;
                        x1 = real_markers(i_m).time(end)+1*periode;
                        x2 = real_markers(i_m).time(end)+(Lastframe_inter-Firstframe_inter+1)*periode;
                        
                        real_markers(i_m).time=[real_markers(i_m).time;linspace(x1,x2,nb_frame_inter)'];
                    else
                        real_markers(i_m).time=real_markers(1).time;
                    end
                else
                    disp('pas m�me de nom de marqueur dans les diff�rents .c3d!!')
                    break
                end
            end
            
            % NbFrame
            nb_frames = size(real_markers(i_m).position,1); %#ok<NASGU>
            % FirstFrame
            Firstframe = []; %#ok<NASGU>
            % LastFrame
            Lastframe = []; %#ok<NASGU>
        end
    end
end

%%%%%%%%%%%%% We delete frames with NaN before any pretreating %%%%%%%%%%%%%%%%%%%%%%%
[real_markers, nb_frames] = Supress_NaN_frames(real_markers);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end