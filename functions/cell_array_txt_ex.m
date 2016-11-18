function out = g_nums(c)
c = {{2,{4,5,6},{{7,8},1,11},12},{15,{21,1}}};
a = cat(ndims(c),c{:});
b = [];
y = {};
for i = 1:length(a)
    b(:,i) = iscell(a{i});
end
b;
[r,col] = find(b==0);
k = 1;
for i = col(1):length(col)
    j = col(k);
    y{i} = a{j};
    a{j} = {};
    k = k+1;
end
if isempty(c) == 1
    out = y;
else
    c = cat(2,a{:});
    out = g_nums(c);
end
