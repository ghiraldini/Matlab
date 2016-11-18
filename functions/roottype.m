function res = roottype(a,b,c)
% function returns value of denominator
% of quadratic equation
discrim = b.*b - 4.*a.*c;
if discrim == 0
    res = 'degenerate';
elseif discrim < 0
    res = 'complex';
else
    res = 'real';
end
    