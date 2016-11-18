function res = collectLeaves(tree)
% put leaves in array
if isleaf(tree)
    res = {tree.value};
else 
    res = {};
    for k = 1:length(tree.branches)
        foo = collectLeaves(tree.branches{k});
        res = {res{:}, foo{:}};
    end
end
