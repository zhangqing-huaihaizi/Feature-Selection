clc;clear;
m=csvread('.\pca_nci\Percent7.csv');
class=m(:,1);
vec=m(:,2:end);
cmd='-v 16';
model=svmtrain(class,vec,cmd);

[yPred,accuracy,decisionValues] = svmpredict(class,vec,model);