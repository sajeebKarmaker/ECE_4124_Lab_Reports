clc
clear all
close all
t = -10:2:20;
n1 = t>=0 & t<=10;
subplot(4,1,1);
stem(t,n1);
xlabel('time'); 
ylabel('amplitude');
title('1st Signal');
n2 = t>=5 & t<=15;
subplot(4,1,2);
stem(t,n2);
xlabel('time');
ylabel('amplitude');
title('2nd Signal');
add = n1+n2;
subplot(4,1,3);
stem(t,add);
xlabel('time');
ylabel('amplitude');
title('Addition');
sub = n1-n2;
subplot(4,1,4);
stem(t,sub);
xlabel('time');
ylabel('amplitude');
title('Subtraction');