clear;
clc;
	;%simulation
B=csvread('Ns M=2 N=2-4.csv');%Analysis
%=============¼ÒÀÀµ²ªG===========
% s Ne
y1=A(:,1');
x=[2:1:4];
% a Ne
y2=[0.5000 1.3333 2.2500];

% s Ns
y3=A(:,2');
% a Ns
y4=B(:,1');

% s Nc
y5=A(:,3');
% a Nc
y6=[0.5 0.333333 0.25 ];


plot(x,y1,'diamond',x,y2,x,y3,'o',x,y4,x,y5,'*',x,y6);
xlabel('N'),ylabel('');
legend('S M=2 Ni','A M=2 Ni','S M=2 Ns','A M=2 Ns','S M=2 Nc','A M=2 Nc');
grid on