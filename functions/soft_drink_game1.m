function out = soft_drink_game1(n,attempts)
scount = 0;
for i = 1:attempts
    y(1:n) = 0;
    count = 0;
    while 1
        %Probability of getting these ticket is 50%
        x1 = randperm(n);
        count = count + 1;
        if (x1(1) <= n/2)& (y(x1(1)) == 0)
            y(x1(1)) = x1(1);
            if sum(y) == sum(1:n)
                break;
            end
        end
        %Probablility of getting these ticket is 30%
        x2 = randperm(n);
        count = count + 1;
        if ((x2(1)<=(4*n/5))&(x2(1)>n/2))& (y(x2(1)) == 0)
            y(x2(1)) = x2(1);
            if sum(y) == sum(1:n)
                break;
            end
        end
        %Probability of getting these ticket is 20%
        x3 = randperm(n);
        count = count + 1;
        if x3(1)>(4*n/5)& (y(x3(1)) == 0)
            y(x3(1)) = x3(1);
            if sum(y) == sum(1:n)
                break;
            end
        end
    end
    scount = count+scount;
end
out = scount/attempts;