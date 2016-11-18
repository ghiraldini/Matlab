function res = leavesandDepths(tree,depths)
% Displays leaves and their depths
% Depth input = 0 to initialize the depth count
if isleaf(tree)
    res = {tree.value,depths};
else 
    res = {};
    depths = depths + 1;
    for k = 1:length(tree.branches)
        foo = leavesandDepths(tree.branches{k},depths);
        res = {res{:}, foo{:}};       
    end
end
