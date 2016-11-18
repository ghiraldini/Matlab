function q = sort_array(a)
[num,ind] = min(a);
x = length(a);
j = 1;
while ind ~= x+1
    y(j) = num;
    a(ind) = [];
    [num,ind] = min(a);
    j = j+1;
end;
q = y;
