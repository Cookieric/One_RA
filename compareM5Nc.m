clear;
clc;
%=============模擬結果===========
% Simulation
y1=[1.3137 1.17754 1.06256 0.966054 0.884274 0.814452 ];
x1=[5 6 7 8 9 10];

%============公式驗算===========
% Analysis
y2=[1.3136 1.17747 1.06247 0.96582 0.884164 0.8146];
x2=[5 6 7 8 9 10];




plot(x1,y1,'square-',x2,y2,'diamond-');
xlabel('N'),ylabel('Nc');
legend('Simulation M=5','Analysis M=5');
grid on