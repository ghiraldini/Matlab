function out = buildTree1(A)
out = {};
for j = 1:length(A)
    out = tree_insert(out,A(j));
end;
