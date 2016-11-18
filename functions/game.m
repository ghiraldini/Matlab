function out = game(n)
y = [];
count = 0;
i = 1;
while 1
    first_half = length(1:n);
    x1 = randperm(first_half);
    if isempty(find(y==x1(1)))
        y(i) = x1(1);
        i = i + 1;
    elseif length(sort(y(y~=0))) == n
        break;
    end
    count = count + 1;
    second_part = length(1:n);
    x2 = randperm(second_part);
    if isempty(find(y==x2(1)))
        y(i) = x2(1);
        i = i + 1;
    elseif x2(1) > n/2
        y(i) = 0;
        i = i + 1;
    elseif length(sort(y(y~=0))) == n
        break;
    end
    count = count + 1;
    x3 = randperm(n);
    if isempty(find(y==x3(1)))
        y(i) = x3(1);
        i = i + 1;
    elseif length(sort(y(y~=0))) == n
        break;
    end
    count = count + 1;
    s = y(y~=0);
    tokens = sort(s);

end
count