function out = btree(a)
% place a blank space at end of string
% ex: 'asdf '
out = {};
x = find(isspace(a));
j = 1;
i = 1;
for u = 1:length(x)    
    out = tree_insert1(out,a(i:x(j)));
    i = x(j)+1;
    j = j+1;
end