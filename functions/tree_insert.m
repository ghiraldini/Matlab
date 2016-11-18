function out = tree_insert(t,x)
    if isempty(t)
        out.key = x;
        out.left = {};
        out.right = {};
    elseif t.key < x
        t.right = tree_insert(t.right,x);
        out = t;
    elseif t.key > x
        t.left = tree_insert(t.left,x);
        out = t;
    else
        out = t;
    end
end 