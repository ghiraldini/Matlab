function res = inversesin(q)
if q < 0
    q = q*-1;
    A = 0:1e-4:1;
    x = sin(A);
    y = binary_search(x,q);
    res = y*(-1e-4);
else
    A = 0:1e-4:1;
    x = sin(A);
    y = binary_search(x,q);
    res = y*(1e-4);
end
    