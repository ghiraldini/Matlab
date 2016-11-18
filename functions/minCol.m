function res = minCol(A)
% function finds the minimum value of all the columns
j = 1;
i = 1;
[r,c] = size(A);
while j < c + 1
    x = min(A(:,j));
    y(i) = x;
    i = i + 1;
    j = j + 1;
end
res = min(y);