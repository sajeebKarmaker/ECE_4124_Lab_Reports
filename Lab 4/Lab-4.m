clc
clear all
close all
x = [1 2 3 4 5 6 7];
l = length(x);
y = sym('z');
zt_l = 0;
zt_r = 0;
for i=1:l
    zt_l = zt_l+x(i)*y^(-i);
end
for i=1:l
    zt_r = zt_r+x(i)*y^(i);
end
disp('Right = ')
disp(zt_l)
disp('Left = ')
disp(zt_r)