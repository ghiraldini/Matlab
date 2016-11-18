function out = find_min(t)
% return the min key in the binary search tree 't'
% m = minimum
if isempty(t)
    out = false;
    while 1
        if isempty(t.left)
            break;
        end
    end
end
out = t.key;