function [RMS_EMG] = EMG_RMS(EMG_raw,S_window)

% la fonction applique une RMS à fenêtre glissante au signal d'entrée

% Arguments d'entrée:
    % - EMG_raw: matrice m*n contenant m lignes correspondant à m signaux
    % EMG bruts et n colonnes correspondant à autant d'échantillons
    % - S_window: scalaire correspondant au nombre d'échantillons de la
    % fenêtre glissante (à adapter en fonction de la fréquence
    % d'échantillonnage)

% Arguments de sortie
    % - RMS_EMG: matrice m*n contenant m lignes correspondant à m signaux
    % EMG traités et n collonnes d'échantillons.



m=numel(EMG_raw(:,1));
n=numel(EMG_raw(1,:));
RMS_EMG=zeros(m,n);

s=S_window;


    % .................................................STEP 1 REMOVE DC OFFSET

    y = detrend(EMG_raw);



    % .................................................STEP 2 Sliding window RMS
for i=1:m
    for j=1:n
      if i+s>m

          delta=i+s-m;

   RMS_EMG(i,j)=sqrt((1/s)*sum(y((i-delta):(i+s-delta),j).^2)); 
      else
   RMS_EMG(i,j)=sqrt((1/s)*sum(y(i:i+s,j).^2));
      end
    end
end

end
