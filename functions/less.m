function out = less(t,x)
% return the min key in the binary search tree 't'
% m = minimum
if isempty(t)
    out = [];
elseif t.key >= x
    out = less(t.left,x);
else 
    out = [less(t.right,x),less(t.left,x),t.key];
end;