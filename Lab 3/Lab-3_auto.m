clc
clear all
close all
size = input('Enter size of x = ');
x = input('x = ');
y = x;
s = zeros(1, size * 2 - 1);
p = 1;
for k = size:-1:1
   for i = k:size
      s(p) = s(p) + y(i) * x(i - k + 1); 
   end
   p = p + 1;
end

for k = 2:size
   for i = k:size
       s(p) = s(p) + x(i) * y(i - k + 1);
   end
   p = p + 1;
end

s
sfun = xcorr(x)
subplot(3, 1, 1); stem(x); title('X[n]');
subplot(3, 1, 2); stem(s); title('R[n]');
subplot(3, 1, 3); stem(sfun); title('R[n] from function');