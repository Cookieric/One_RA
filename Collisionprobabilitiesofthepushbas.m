clear;
clc;
A=csvread('Ne Ns Nc M=10 N=10-20.csv');
B=csvread('Ns M=10 N=10-20.csv');
%=============�������G===========
% s Ne
y1=A(:,1');
x=[10:1:20];
N=[10:1:120];

%1-exp(-M/N)
y11=1-exp(-10./N);
% a Ne
y2=[3.4868 4.2410 5.0268 5.8388 6.6724 7.5242 8.3914 9.2717 10.1633 11.0648 11.9747];


% s Ns
y3=A(:,2');
y3=y3'
% a Ns
y4=B(:,1');
y4=y4'

% s Nc
y5=A(:,3');
y5=y5'
% a Nc
y6=[2.63901 2.51805 2.40329 2.29557 2.19501 2.10141 2.01439 1.93348 1.85822 1.78813 1.72277];
%s Nc/N
y7=y5./x;
%a Nc/N
y8=y6./x;

%s (Nc+Ns)/N
y9=(y5+y3)./x;

%a (Nc+Ns)/N
y10=(y6+y4)./x;




%============�������===========

semilogx(x,y8,'-',N,y11,'--');
xlabel('N'),ylabel('');
legend('push-based overload control schemes','pull-based overload control schemes');
grid on