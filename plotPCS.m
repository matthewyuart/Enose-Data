files = dir('*.csv') ;    % you are in folder of cdf files
N = length(files) ;   % total number of files 
% loop for each file 
for i = 1:N
    %thisfile = append(files(i).folder,'/',files(i).name) ;
    thisfile = files(i).name ;
    [folder, baseFileName, extension] = fileparts(files(i).name);
    out = readtable(thisfile);
    %C = struct2cell(thisdata);
im=image(256*normalize(table2array(out(:,25:40)),'range'));% PCS
 imFileName = strcat('PCS_Only_',baseFileName,'_image','.jpg');
    %imwrite(imresize(im,[224 224]),imFileName);
    im=gcf;
    axis off;
saveas(gcf,imFileName);
end