function out = tree_insert1(t,x)
if isempty(t)
    out.key = x;
    out.left = {};
    out.right = {};
elseif length(t.key) < length(x)
    t.right = tree_insert1(t.right,x);
    out = t;
elseif length(t.key) > length(x)
    t.left = tree_insert1(t.left,x);
    out = t;
elseif length(t.key) == length(x)
    q = find(t.key > x);
    w = find(x > t.key);
    if isempty(q)
        t.right = tree_insert1(t.right,x);
        out = t;
        return;
    end
    if isempty(w)
        t.left = tree_insert1(t.left,x);
        out = t;
        return;
    end
    if q(1) < w(1)
        t.left = tree_insert1(t.left,x);
        out = t;
    end
    if w(1) < q(1)
        t.right = tree_insert1(t.right,x);
        out = t;
    end
end