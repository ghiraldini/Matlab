function out = bin_search1(t,x)
out = search_left(t,x);
if out == 0
    out = search_right(t,x);
end