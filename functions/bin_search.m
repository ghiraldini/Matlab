function out = bin_search(t,x)
% binary search tree
if isempty(t)
    out = false; return;
    elseif abs(t.key - x) < .0001
        out = true; return;
        elseif t.key > x
            out = bin_search(t.left, x);
            else
                out = bin_search(t.right, x);
end;