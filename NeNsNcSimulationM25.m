clear;
clc;
A=csvread('Ne Ns Nc M=25 N=25-50.csv');
%=============�������G===========
% Ne
y1=A(:,1');
x=[25:1:50];
% Ns
y2=A(:,2');

% Nc
y3=A(:,3');


%============�������===========





plot(x,y1,'o',x,y2,'pentagram',x,y3,'diamond');
xlabel('N'),ylabel('');
legend('Ne Sim M=25','Ns Sim M=25','Nc Sim M=25');
grid on