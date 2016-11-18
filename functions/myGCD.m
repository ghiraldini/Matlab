function G = myGCD(a,b)
while ~(b == 0)
    rem = mod(a,b);
    a = b;
    b = rem;
end
m = a
