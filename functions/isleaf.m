function res = isleaf(node)
% test whether a node is a leaf
res = ~isfield(node,'branches') | isempty(node.branches);
