%% INITIALIZATION
clear
close all
clc

load('position/Pos_hover.mat')
load('position/refPos_hover.mat')
ref_pos.Data = squeeze(ref_pos.Data)';

error = pos.Data - ref_pos.Data;

%% Task 1
t1 = 0;
t2 = 27;
indices1 = pos.Time > t1 & pos.Time < t2;
time1 = pos.Time(indices1)-t1;

figure(1)
plot(pos.Data(indices1,1),pos.Data(indices1,2))
hold on
scatter([1 2],[1 1],'filled','r')
hold off
xlabel('X'); ylabel('Y');
legend('Observed','Reference')

figure(2)
subplot(3,1,1)
plot(time1,pos.Data(indices1,1))
hold on
plot(time1,ref_pos.Data(indices1,1))
hold off
xlabel('Time'); ylabel('X');
ylim([min(min(pos.Data(indices1,1)),min(ref_pos.Data(indices1,1)))-0.2, max(max(pos.Data(indices1,1)),max(ref_pos.Data(indices1,1)))+0.2])
legend('Observed','Reference')

subplot(3,1,2)
plot(time1,pos.Data(indices1,2))
hold on
plot(time1,ref_pos.Data(indices1,2))
hold off
xlabel('Time'); ylabel('Y');
ylim([min(min(pos.Data(indices1,2)),min(ref_pos.Data(indices1,2)))-0.02, max(max(pos.Data(indices1,2)),max(ref_pos.Data(indices1,2)))+0.02])
legend('Observed','Reference')

subplot(3,1,3)
plot(time1,pos.Data(indices1,3))
hold on
plot(time1,ref_pos.Data(indices1,3))
hold off
xlabel('Time'); ylabel('Z');
legend('Observed','Reference')

figure(3)
plot(time1,error(indices1,1))
hold on
plot(time1,error(indices1,2))
plot(time1,error(indices1,3))
legend('Error in X','Error in Y','Error in Z')
xlabel('Time'); ylabel('Error');
hold off

%% Task 2
t3 = 15;
t4 = 20;
indices2 = pos.Time > t3 & pos.Time < t4;
time2 = pos.Time(indices2)-t3;

figure(4)
plot(pos.Data(indices2,1),pos.Data(indices2,2))
hold on
scatter(0,-2,'filled','r')
hold off
xlabel('X'); ylabel('Y');
legend('Observed','Reference')

figure(5)
subplot(3,1,1)
plot(time2,pos.Data(indices2,1))
hold on
plot(time2,ref_pos.Data(indices2,1))
hold off
xlabel('Time'); ylabel('X');
ylim([min(min(pos.Data(indices2,1)),min(ref_pos.Data(indices2,1)))-0.2, max(max(pos.Data(indices2,1)),max(ref_pos.Data(indices2,1)))+0.2])
legend('Observed','Reference')

subplot(3,1,2)
plot(time2,pos.Data(indices2,2))
hold on
plot(time2,ref_pos.Data(indices2,2))
hold off
xlabel('Time'); ylabel('Y');
ylim([min(min(pos.Data(indices2,2)),min(ref_pos.Data(indices2,2)))-0.02, max(max(pos.Data(indices2,2)),max(ref_pos.Data(indices2,2)))+0.02])
legend('Observed','Reference')

subplot(3,1,3)
plot(time2,pos.Data(indices2,3))
hold on
plot(time2,ref_pos.Data(indices2,3))
hold off
xlabel('Time'); ylabel('Z');
legend('Observed','Reference')

figure(6)
plot(time2,error(indices2,1))
hold on
plot(time2,error(indices2,2))
plot(time2,error(indices2,3))
legend('Error in X','Error in Y','Error in Z')
xlabel('Time'); ylabel('Error');
hold off
