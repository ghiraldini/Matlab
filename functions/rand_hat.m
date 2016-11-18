function out = rand_hat(n,attempt)
a = 1:n;
x = sort(a);
scount = 0;
for j = 1:attempt
    y = randperm(n);
    count = 0;
    for i = 1:n
        if x(i) ~= y(i)
            count = count + 1;
        end
    end
    if count == n
        scount = scount + 1;
    end
end
out = scount/attempt