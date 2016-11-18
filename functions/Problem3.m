function out = Problem3(a,b)
new_a = a;
rank_a = [];
rank_b = [];
count = 1;
[f,L] = size(a);
for i = 1:L
    [row,col] = min(new_a);
    [r,c] = find(a==min(new_a));
    new_a(col) = [];
    rank_a(c) = count;
    count = count+1;
end
rank_a;
x = perms(b);
[num,k] = size(x);
for j = 1:num
    b = x(j,:);
    new_b = b;
    rank_b = [];
    count = 1;
    for i = 1:L
        [row1,col1] = min(new_b);
        [r1,c1] = find(b==min(new_b));
        new_b(col1) = [];
        rank_b(c1) = count;
        count = count+1;
    end
    rank_b;
    if rank_a == rank_b
        break;
    end
end
b