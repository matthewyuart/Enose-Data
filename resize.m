dataDir = 'PCS_ONLY';
parentDir = '/Users/matthewyu/Downloads';
n_folder=fullfile(parentDir,dataDir);

list=dir(fullfile(n_folder,'*.jpg'));
for j = 1:length(list)
    I=imread(list(j).name);
    J = imresize(I, [224 224]);
    imwrite(J,strcat('resize',list(j).name));
end
