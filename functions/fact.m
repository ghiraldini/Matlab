function out = fact(n)
% function return n!
if n <= 1 out = 1;
else out = n .* fact(n-1);
end;