clc;clear;
clear all;
step=5;
total=1;

m=csvread('test_nci9_s3.csv',1,0);
n  =  csvread('nci_s3.txt');
class=m(:,1);
vec=m(:,2:end);
[M,N]=size(vec);

features_num=zeros(1,total);
for i=1:total
    features_num(i)=9712;
    new_vec=zeros(M,features_num(i)+1);
    new_vec(:,1)= class;
    for j=2:features_num(i)+1
        new_vec(:,j)=new_vec(:,j)+vec(:,n(j-1));
    end
    
    %%%%%%%%%%%%%%%%%%%%   SVM   %%%%%%%%%%%%
%     cmd='-v 10';
%     model = svmtrain(class,new_vec,cmd);
%     [yPred,accuracy,decisionValues] = svmpredict(yTesting,xTesting,model);
    
    filename = strcat('.\ncifeatures',int2str(i));
    filename = strcat(filename , '.csv');
    csvwrite(filename,new_vec);
    
end