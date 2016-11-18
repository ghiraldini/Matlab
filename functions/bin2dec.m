function res = bin2dec(a)
% function takes binary string and returns
% decimal value
q = a(end:-1:1);
[num, ind] = find(q == 1);
L = length(ind);
j = ind(1);
dec = 0;

for j = 1:L
    dec = dec + 2.^(ind(j)-1);
    j = j + 1;
end
res = dec;