function treePrint2(A, j)
% print tree with indentation j
if isempty(A) return;
else
    treePrint2(A.left, j+1); sp = '*';
    for i=1:j
        sp = strcat(sp,'*');
    end;
    fprintf(sp); 
    fprintf('%d', A.key);
    fprintf('\n');
    treePrint2(A.right, j+1);
end;
