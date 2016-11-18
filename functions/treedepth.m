function res = treedepth(tree)
% max depth of tree
if isleaf(tree)
    res = 0;
else
    bdepths = zeros(length(tree.branches),1);
    for k = 1:length(tree.branches)
        bdepths(k) = treedepth(tree.branches{k});
    end
    res = (bdepths);
end