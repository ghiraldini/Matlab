function out = g_nums(c)
%c = {{2,{4,5,6},{{7,8},1,11},12},{15,{21,1}}};
b = [];
y = {};
for i = 1:length(c)
    b(:,i) = iscell(c{i});
end
if isempty(b)
    out = y;
    return;
else
    [r,col] = find(b==0);
    if isempty(col)
        c = cat(ndims(c),c{:});
        g_nums(c);
    else
        k = 1;
        for i = 1:length(col)
            j = col(k);
            y{i} = c{j};
            c{j} = {};
            k = k+1;
        end
        out = y
    end

    if isempty(cat(ndims(c),y{:})) == 1
        return;
    else
        g_nums(c);
    end
end