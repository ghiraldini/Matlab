function res = merge(A,B)
if lenth(A)==0
    res = B;
elseif lenth(B)==0
    res = A;
else
    if A(1) <= B(1)...