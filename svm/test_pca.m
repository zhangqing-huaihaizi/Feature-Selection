clc;clear;
m=csvread('test_nci9_s3.csv',1,0);
class=m(:,1);
vec=m(:,2:end);
[M,N]=size(vec);


feature_dim=7;
chosen=zeros(M,feature_dim+1);
chosen(:,1)=class;
chosen(:,2:end)=ppca(vec,feature_dim);

filename = strcat('.\pca_nci\Percent',int2str(feature_dim));
filename = strcat(filename , '.csv');
csvwrite(filename,chosen);

