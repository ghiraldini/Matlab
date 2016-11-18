function S = powersum(z,n)
% Function computes summation E(n,j=0) Z^-j
powersum = sum(z.^-(0:n))
