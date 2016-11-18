y(1:n) = 0;
count = 0;
%while 1
for i = 1:100
    %Probability of getting these ticket is 50%
    x1 = randperm(n)
    count = count + 1;
    if (x1(1) < n/2)& (y(x1(1)) == 0)
        y(x1(1)) = x1(1)
        if sum(y) == sum(1:n)
            break;
        end
    end
end