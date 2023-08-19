clear all; 
clc;
x = [1 2 3 4]; 
h = [4 4 3 2]; 

for i = 1:length(x) 
    for j = 1 : length(h) 
        table(i, j) = x(i) * h(j); 
    end 
end 

cnt = 1; 

for i = 1 : length(h) 
    col = i; 
    row = 1; 
    res = 0; 
    while(col > 0) 
        res = res + table(row, col);
        row = row + 1; 
        col = col - 1; 
    end 
    ans(cnt) = res; 
    cnt = cnt + 1; 
end

for i = 2 : length(x) 
    row = i; 
    col = length(h); 
    res = 0; 
    while(row <= length(x)) 
        if(col < 1) break; 
        end 
    res = res + table(row, col); 
    row = row + 1; 
    col = col - 1; 
    end 

ans(cnt) = res; 
cnt = cnt + 1; 
end

subplot(3, 1, 1) 
stem(x) 
title('x(n)') 

subplot(3, 1, 2) 
stem(h) 
title('h(n)') 

subplot(3, 1, 3) 
stem(ans) 
title('ans(n)')