%function res = rand_subset(n)
n = 8;
q = 1:n;
l = length(q);
a = ceil(rand(1,l).*n);
y = floor(rand(1,n).*2);
z = a.*y;
res = find(z > 0)