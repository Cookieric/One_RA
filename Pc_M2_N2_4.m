clear;
clc;
%=============�������G===========
% 
y1=[0.999645 0.99847 0.996144 0.992476 0.987491 0.981129 0.973545 0.96498 0.955646 0.945352 0.934495];
x1=[10 11 12 13 14 15 16 17 18 19 20];
%=============���R���G===========
y2=[0.999637 0.998461 0.996132 0.992472 0.987442 0.981102 0.973571 0.964993 0.955527 0.945324 0.934527];
x2=[10 11 12 13 14 15 16 17 18 19 20];






plot(x1,y1,x2,y2);
xlabel('N'),ylabel('Pc');
legend('Simulation','Analysis');
grid on