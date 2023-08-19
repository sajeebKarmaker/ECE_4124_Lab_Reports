clc
x = [2 3 4 5 3];
y = sym('y');

Causal = 0;
for i=1:length(x)
    Causal = Causal + x(i)*y^(1-i);
end
display(Causal);

Anti_causal = 0;
for i=length(x):-1:1
    Anti_causal = Anti_causal + x(i)*y^(length(x)-i);
end
display(Anti_causal);

max_ind = 4;
ind = find(max_ind==x);
Non_Causal = 0;
for i=1:length(x)
    Non_Causal = Non_Causal + x(i)*y^(ind-i);
end
display(Non_Causal);