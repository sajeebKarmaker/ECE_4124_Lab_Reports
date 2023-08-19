clc
clear all
close all
t = -10:0.01:20;
n1 = t>=0 & t<=7;
n2 = t>=1 & t<=6;
n3 = t>=2 & t<=5;
s1 = n1+n2+2*n3;
subplot(2,1,1);
plot(t,s1);
xlabel('time');
ylabel('amplitude');
title('1st signal');
t1 = -3:0.01:3 ;
impulse = t1>=0;
n11 = t1.*impulse;
n22 = t1>=3 & t1<=5;
s2 = n11+n22;
subplot(2,1,2);
plot(t1,s2);
xlabel('time');
ylabel('amplitude');
title('2nd signal');