function out = repeat(F, n)
out = F(F(n));

function out = square(x)
out = x * x;