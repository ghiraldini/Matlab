function out = Problem2(a)
[r,c] = size(a);
if r == 0
    out = 'True';
end
for i = 1:r
    same = a(i,:) ~= sort(a(i,:));
    for j = 1:c
        same1 = a(:,j) ~= sort(a(:,j));
        if (sum(same) > 0) | (sum(same1) > 0)
            out = 'False';
            break;
        else
            out = 'True';
        end
    end
end
