clc; clear all; close all;

load data_batch_1.mat;
[m,n]=size(data);
trainingImages=uint8(zeros(32,32,3,m));


for i=1:m
    temp=data(i,:);
    buffer=reshape(temp,32,32,3);
   trainingImages(:,:,:,i)=uint8(buffer); 
    
end

% traininglabels=[];
% for i=1:m
%     
%    traininglabels=categorical(traininglabels,labels(i,1)); 
%     
% end

trainingLabels=categorical(labels);
testLabels=categorical(labels);

testImages=trainingImages;
