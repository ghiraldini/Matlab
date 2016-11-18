y = [];
count = 0;
i = 1;
n = 10;
while 1
    %Probability of getting these ticket is 50%
    x1 = randperm(n);
    if (x1(1) < n/2) & isempty(find(y==x1(1)))
        y(i) = x1(1);
        i = i + 1;
        if length(sort(y(y~=0))) == n
            break;

        end
        count = count + 1;
    end
    %Probablility of getting these ticket is 30%
    x2 = randperm(n);
    if ((x2(1)<(4*n/5))&(x2(1)>n/2))&isempty(find(y==x2(1)))
        y(i) = x2(1);
        i = i + 1;
        if length(sort(y(y~=0))) == n
            break;
        end

        count = count + 1;
    end
    %Probability of getting these ticket is 20%
    x3 = randperm(n);
    if x3(1)>(4*n/5)&isempty(find(y==x3(1)))
        y(i) = x3(1);
        i = i + 1;
        if length(sort(y(y~=0))) == n
            break;
        end
    end
    count = count + 1;

    %s = y(y~=0);
    %tokens = sort(s);
end
count