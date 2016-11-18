function out = binary_search(A, x)
if A(1) > x out = 0;
else out = search(A, 1, length(A), x);
end;
