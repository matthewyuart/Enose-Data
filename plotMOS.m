files = dir('*.csv') ;    % you are in folder of cdf files
N = length(files) ;   % total number of files 
% loop for each file 
for i = 1:N
    %thisfile = append(files(i).folder,'/',files(i).name) ;
    thisfile = files(i).name ;
    [folder, baseFileName, extension] = fileparts(files(i).name);
    out = readtable(thisfile);
    %C = struct2cell(thisdata);
im=image(255*normalize(table2array(out(:,16:23)),'range'));% MOS
 imFileName = strcat('MOS_only_',baseFileName,'_image','.jpg');
    %imwrite(imresize(im,[224 224]),imFileName);
    im=gcf;
    axis off;
saveas(gcf,imFileName);
end