function out = primesieve(n)
x = 2:n;
i = 1;
j = 1;
while 1
    q(j) = x(i); %Get first value
    y = find(mod(x,x(i)) == 0); %Find all multiples
    x(y) = []; %Cross out all multiples
    j = j+1;
    if isempty(x) %Check if array is empty
        break;
    end
end
out = q; %Display prime numbers