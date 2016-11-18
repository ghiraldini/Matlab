function D = max_gap(a)
% Function that finds max difference of succesive elements
m = max(abs(a(2:end)-a(1:end-1)))

