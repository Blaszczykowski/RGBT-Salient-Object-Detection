load('C:\Users\wgz\Desktop\������ݼ��Ա�ʵ����\fuse\COV.mat')
plot(Recall ,Pre, 'b-' ,'LineWidth', 2 )
axis([0 1 0 1])
xlabel('Recall')
ylabel('Precision')
hold on

load('C:\Users\wgz\Desktop\������ݼ��Ա�ʵ����\fuse\CA.mat')
plot(Recall ,Pre, 'b--' ,'LineWidth', 2 )
axis([0 1 0 1])
xlabel('Recall')
ylabel('Precision')
hold on

load('C:\Users\wgz\Desktop\������ݼ��Ա�ʵ����\fuse\BSCA.mat')
plot(Recall ,Pre, 'b:' ,'LineWidth', 2 )
axis([0 1 0 1])
xlabel('Recall')
ylabel('Precision')
hold on

load('C:\Users\wgz\Desktop\������ݼ��Ա�ʵ����\fuse\DSR.mat')
plot(Recall ,Pre, 'm:' ,'LineWidth', 2 )
axis([0 1 0 1])
xlabel('Recall')
ylabel('Precision')
hold on

load('C:\Users\wgz\Desktop\������ݼ��Ա�ʵ����\fuse\GMR.mat')
plot(Recall ,Pre, 'y-' ,'LineWidth', 2 )
axis([0 1 0 1])
xlabel('Recall')
ylabel('Precision')
hold on

% load('C:\Users\wgz\Desktop\������ݼ��Ա�ʵ����\fuse\MST.mat')
% plot(Recall ,Pre, 'y--' ,'LineWidth', 2 )
% axis([0 1 0 1])
% xlabel('Recall')
% ylabel('Precision')
% hold on
% 
% load('C:\Users\wgz\Desktop\������ݼ��Ա�ʵ����\fuse\RR.mat')
% plot(Recall ,Pre, 'y:' ,'LineWidth', 2 )
% axis([0 1 0 1])
% xlabel('Recall')
% ylabel('Precision')
% hold on
% 
% load('C:\Users\wgz\Desktop\������ݼ��Ա�ʵ����\fuse\HS.mat')
% plot(Recall ,Pre, 'c-' ,'LineWidth', 2 )
% axis([0 1 0 1])
% xlabel('Recall')
% ylabel('Precision')
% hold on

load('C:\Users\wgz\Desktop\������ݼ��Ա�ʵ����\fuse\SR.mat')
plot(Recall ,Pre, 'c:' ,'LineWidth', 2 )
axis([0 1 0 1])
xlabel('Recall')
ylabel('Precision')
hold on

load('C:\Users\wgz\Desktop\������ݼ��Ա�ʵ����\fuse\SeR.mat')
plot(Recall ,Pre, 'c-.' ,'LineWidth', 2 )
axis([0 1 0 1])
xlabel('Recall')
ylabel('Precision')
hold on

load('C:\Users\wgz\Desktop\������ݼ��Ա�ʵ����\fuse\FES.mat')
plot(Recall ,Pre, 'm-.' ,'LineWidth', 2 )
axis([0 1 0 1])
xlabel('Recall')
ylabel('Precision')
hold on

load('C:\Users\wgz\Desktop\������ݼ��Ա�ʵ����\fuse\GR.mat')
plot(Recall ,Pre, 'y-.' ,'LineWidth', 2 )
axis([0 1 0 1])
xlabel('Recall')
ylabel('Precision')
hold on

load('C:\Users\wgz\Desktop\������ݼ��Ա�ʵ����\fuse\SEG.mat')
plot(Recall ,Pre, 'b-.' ,'LineWidth', 2 )
axis([0 1 0 1])
xlabel('Recall')
ylabel('Precision')
hold on

load('C:\Users\wgz\Desktop\multiM\saliencymap\dataset(new)\300-0.03-0.2-0.01-24-12-5-0.25.mat')
plot(Recall ,Pre, 'r-' ,'LineWidth', 2 )
axis([0 1 0 1])
xlabel('Recall')
ylabel('Precision')
hold on

% hleg=legend('COV(G)','CA(G)','BSCA(G)','DSR(G)','GMR(G)','MST(G)','RR(G)','HS(G)','SR(G)','SeR(G)','FES(G)','GR(G)','SEG(G)','Ours','Location','SouthWest');
% hleg=legend('COV(T)','CA(T)','BSCA(T)','DSR(T)','GMR(T)','MST(T)','RR(T)','HS(T)','SR(T)','SeR(T)','FES(T)','GR(T)','SEG(T)','Ours','Location','SouthWest');

hleg=legend('COV(GT)','CA(GT)','BSCA(GT)','DSR(GT)','GMR(GT)','SR(GT)','SeR(GT)','FES(GT)','GR(GT)','SEG(GT)','Ours','Location','SouthWest');
set(hleg,'FontSize',8)

