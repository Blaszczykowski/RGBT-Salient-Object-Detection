function [fsal, r1, r2]=CMR( Y, r1, r2,  A1, A2,  C, u, lambda, spnum)
%% Description: iterative updating---stage1
global Gama1;
global Gama2;

   iter=1;
   A= blkdiag(A1,A2);  %%������A1,A2Ϊ�Խ���Ԫ�صľ���
   maxIter=50;
   temp_r1 = 0.5;
   temp_r2 = 0.5;
   temp_fsal1 = 0.15;
   temp_fsal2 = 0.15;
   ERROR = [];
   I=eye(2*spnum);   %%����������Ŀ��2�ĵ�λ����ɶ��˼��������
   while iter<=maxIter  %%�����Ż�  ��һ���Ǹ�ɶ�ģ�����
       R1=r1*ones(spnum,spnum*2);
       R2=r2*ones(spnum,spnum*2);
       RR1=[R1;R2]; %%�ϳ��ܶԽ���R(�Խ�����ҪΪrk1��rk2)
       R=RR1.*RR1';
       
       %% �����ܵĹ�������optAff
       optAff=inv( (R.*A+lambda*C'*C)/u + I );  
       fsal=optAff*Y;   
       fsal1=fsal(1:spnum);
       fsal2=fsal(spnum+1 : 2*spnum);
       
       %% ��һ�ε���
       if(iter==1)  
           normk1=sqrt(fsal1'*A1*fsal1);
           normk2=sqrt(fsal2'*A2*fsal2);
       end
       
       %% ����r1, r2
       r1=1/(1+((fsal1' * A1 * fsal1)/(Gama1*normk1^2)));
       r2=1/(1+((fsal2' * A2 * fsal2)/(Gama2*normk2^2)));   

       %% �ж��Ƿ���ǰ��ֹ����   Ϊʲôѽ������������
       err1 = max(abs( fsal1(:) - temp_fsal1(:) ));
       err2 = max(abs( fsal2(:) - temp_fsal2(:) ));
       err3 = max(abs( r1 - temp_r1 ));%%������������Ϊʲô ����ʵ��Ȩ�غͳ�ʼȨ��֮��ľ���ֵ֮���
       err4 = max(abs( r2- temp_r2 ));
       max_err = max( err1 , err2 );
       max_err = max( max_err , err3 );  
       max_err = max( max_err , err4 );
       ERROR = [ERROR; max(max_err)];  
       if(max_err<10e-5)
           break;
       end
       
       %% ������һ�ε�r1,r2,fsal1,fsal2
       iter=iter+1;
       temp_r1 = r1;
       temp_r2 = r2;
       temp_fsal1 = fsal1;
       temp_fsal2 = fsal2;

   end %%��������

end %%����CMR����