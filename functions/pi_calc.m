function res = pi_calc(a)
x = (1:2:a).^-1;
w = x(1:2:end);
y = x(2:2:end);
q = sum(w) - sum(y);
res = 4*q;