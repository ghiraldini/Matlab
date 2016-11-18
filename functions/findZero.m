function out = findZero(z)
% function finds the first zero of
% in the matrix
[r,c] = find(z == 0);
x = [r,c];
[row,col] = min(r);
row_and_col = x(col,:);
%r = row_and_col(1)
%c = row_and_col(2)
q = [row_and_col(1), row_and_col(2)];
r = q(1)
c = q(2)