%Make image datastore
dataDir = 'Train';
parentDir = '/Users/ccy002/Google Drive/Matthew Yu/2023Science/4Github/Transferlearning/';
allImages = imageDatastore(fullfile(parentDir,dataDir),...
    'IncludeSubfolders',true,...
    'LabelSource','foldernames');
rng default
[imgsTrain,imgsValidation] = splitEachLabel(allImages,0.8,'randomized');
disp(['Number of training images: ',num2str(numel(imgsTrain.Files))]);

disp(['Number of validation images: ',num2str(numel(imgsValidation.Files))]);
