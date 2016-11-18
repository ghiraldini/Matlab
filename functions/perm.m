function out = perm(A)
% prints permutations of A
n = length(A);
if n == 1
    out = {[A(1)]};
else
    out = {};
    out2 = perm(A(2:n));
    for j = 1:n
       out1 = insertp(A(1),j, out2); 
       out = [out,out1];
    end;
end