function out = out_left(A)
if isempty(A) return;
else
    A.key
    A.left;
    out_left(A.left);
end;