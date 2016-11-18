function L = subsets(a)
% generates all subsets of 1st
if length(a) == 0
    L = {[]};
elseif length(a) == 1
    L = {[a(1)],[]};
else
L1 = subsets(a(2:end));
L2 = my_insert(a(1), L1);
L = [L1 L2];
end;
    