function out = p(n)
j = 1;
for i = 1:n
    x = isprime(i);
    if x == 1
        y(j) = i;
        j = j + 1;
    end
end
out = y;
        
    