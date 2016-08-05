clear;
clc;
%=============模擬結果===========
%Simulation
y1=[0.499922 0.33316 0.249987];
x1=[2 3 4];

%============公式驗算===========
%Analysis
y2=[0.5 0.333333 0.25];
x2=[2 3 4];




plot(x1,y1,'square-',x2,y2,'diamond-');
xlabel('N'),ylabel('Pc');
legend('Simulation M=2','Analysis M=2');
grid on