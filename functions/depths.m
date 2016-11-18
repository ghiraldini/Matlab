function res = depths(tree)
if isleaf(tree)
    res = 0;
else
    %res = {};
    for k = 1:length(tree.branches)
        count(k) = depths(tree.branches{k});
    end
    res = (count{:});
end
