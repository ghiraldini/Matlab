function out = buildtree(num,range)
% function builds tree with 'num' amount of 
% nodes between 1 - range.
a = floor(rand(1,num)*range);
out = {};
for i = 1:length(a)
    out = tree_insert(out,a(i));
end;