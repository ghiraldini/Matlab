function out = poisson(lambda)
i = 0;
u = rand();
p = exp(-lambda);
F = p;
while u > F
    p = lambda*p/(i+1);
    F = F + p;
    i = i + 1;
end
out = i;