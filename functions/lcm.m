function L = lcm(a,b)
x = gcd(a,b);
lcm(a,b) = (a.*b)./x
%lcm(a,b) = (a*b)/(gcd(a,b))

        