function [leaves, depths] = leavesandDepths1(tree)
% Displays leaves and their depths
%depths = 0;
if isleaf(tree)
    leaves = {tree.value};
    depths = 0;
else 
    leaves = {};
    depths = [];
    for k = 1:length(tree.branches)
        [one,two] = leavesandDepths1(tree.branches{k});
        leaves = [leaves,one];
        depths = [depths,two+1];
    end
end