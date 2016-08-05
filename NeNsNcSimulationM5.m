clear;
clc;
A=csvread('Ne Ns Nc M=5 N=5-10.csv');%simulation
B=csvread('Ns M=5 N=5-10.csv');%Analysis
%=============¼ÒÀÀµ²ªG===========
% s Ne
y1=A(:,1');
x=[5:1:10];
% a Ne
y2=[1.6384 2.4113 3.2386 4.1033 4.9944 5.9049];

% s Ns
y3=A(:,2');
% a Ns
y4=B(:,1');

% s Nc
y5=A(:,3');
% a Nc
y6=[1.3136 1.17747 1.06247 0.96582 0.884164 0.8146];


plot(x,y1,'diamond',x,y2,x,y3,'o',x,y4,x,y5,'*',x,y6);
xlabel('N'),ylabel('');
legend('S M=5 Ni','A M=5 Ni','S M=5 Ns','A M=5 Ns','S M=5 Nc','A M=5 Nc');
grid on