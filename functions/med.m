function res = med(a,b,c)
%function returns the median value of the three
sum = (a + b + c);
v = [a b c];
m = max(v);
n = min(v);
res = sum - m - n;