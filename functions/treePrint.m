function treePrint(A)
if isempty(A) return;
else
    treePrint(A.left);
    fprintf('%d', A.key); 
    fprintf('\n');
    treePrint(A.right);
end;