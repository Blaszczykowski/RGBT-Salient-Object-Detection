clear all;
global imgRoot;
global imgRoot1;
global imgRoot2;
global supdir;
global mu;
global theta1;
global theta2;
global u;
global gama;
mu=1e-3;
theta1=40;
theta2=40;
u=0.99;
gama=1.7;
imgRoot='E:\WORK1\MY CODE\���ɷַ���mutiple scale without noise\test\';
imgRoot1='E:\WORK1\MY CODE\���ɷַ���mutiple scale without noise\test\G\';%%�ɼ�������
imgRoot2='E:\WORK1\MY CODE\���ɷַ���mutiple scale without noise\test\T\';%%�Ⱥ�������
supdir='./superpixels/';
if(~exist(imgRoot,'dir'))
    mkdir(imgRoot);
end
if(~exist(supdir,'dir'))
   
    mkdir(supdir);
end
    cd 'E:\WORK1\MY CODE\���ɷַ���mutiple scale without noise';
     saldir1=['E:\WORK1\MY CODE\���ɷַ���mutiple scale without noise/first/'];%%���
    saldir2=['E:\WORK1\MY CODE\���ɷַ���mutiple scale without noise/results/'];%%���
    sal=dir([saldir2 '*' 'png']); 
    if(~exist(saldir2,'dir'))        
        mkdir(saldir1); 
        mkdir(saldir2); 
    end       
    if(length(sal)<821)
        DEMO11(saldir1, saldir2 )
    end

 
