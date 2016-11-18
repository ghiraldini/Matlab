function treePrint1(A)
if isempty(A) return;
else
    treePrint1(A.left);
    fprintf('%s', A.key); fprintf('\n');
    treePrint1(A.right);
end;