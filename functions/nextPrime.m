function n = nextPrime(m)
% Function finds the next prime number after 'm'
n = m + 1;
while(~isprime(n))
        n = n + 1;
    end;