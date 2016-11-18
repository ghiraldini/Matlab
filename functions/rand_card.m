function out = rand_card(n)
a = 1:n;
for j = 1:n-1
    rand1 = ceil(rand(1,a)*(n-j+1));
    out(end+1) = a(rand1);
    a(rand1) = [];
end;
out(end+1) = a(1);