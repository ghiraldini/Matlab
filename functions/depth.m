function out = depth(tree)
if isempty(tree)
    out = 0;
else
    out = 1 + max(depth(tree.left),depth(tree.right));
end