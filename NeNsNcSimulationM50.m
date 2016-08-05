clear;
clc;
A=csvread('Ne Ns Nc M=50 N=50-100.csv');
%=============模擬結果===========
% Ne
y1=A(:,1');
x=[50:1:100];
% Ns
y2=A(:,2');

% Nc
y3=A(:,3');


%============公式驗算===========





plot(x,y1,'o',x,y2,'pentagram',x,y3,'diamond');
xlabel('N'),ylabel('');
legend('Ne Sim M=50','Ns Sim M=50','Nc Sim M=50');
grid on