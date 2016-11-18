function out = out_right(A)
if isempty(A) return;
else
    A.key
    A.right;
    out_right(A.right);
end;