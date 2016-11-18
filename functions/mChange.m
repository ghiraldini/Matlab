function out = mChange(A,k)
% select all k-elt subsets of A
if length(A)==k
    out={A};
elseif length(A)< k | k == 0
    out = {};
else
    out1 = mChange(A(2:end),k-1);
    out2 = mChange(A(2:end),k);
    out1 = insertp(A(1),1,out1);
    out = [out1,out2];
end;
        
        
        
