clc;
close all;

X=imread('C:\Users\Devendra\Desktop\dataset\Training\3\104.jpg');
X=imresize(X,[227,227]);
imshow(X);
[YPred,scores] = classify(netTransfer,X);


% X=imresize(X,[227,227]);
% % X=imrotate(X,-90);
% imshow(X)
% [YPred,scores] = classify(netTransfer,X)