function out = search_left(t,x)
if isempty(t)
    out = false; return;
elseif strmatch(x,t.key,'exact') == 1
        out = true;
    else
        out = bin_search1(t.left,x);
    end
end