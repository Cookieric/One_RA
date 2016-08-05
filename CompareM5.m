clear;
clc;
%=============�������G===========
%Simulation
y1=[0.961679 0.907457 0.850046 0.794936 0.74402 0.697594];
x1=[5 6 7 8 9 10];

%============�������===========
%Analysis
y2=[0.9616 0.907407 0.850062 0.794922 0.743941 0.6976];
x2=[5 6 7 8 9 10];




plot(x1,y1,'square-',x2,y2,'diamond-');
xlabel('N'),ylabel('Pc');
legend('Simulation M=5','Analysis M=5');
grid on