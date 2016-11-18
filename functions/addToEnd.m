function res = addToEnd(A,x)
% function takes x and adds element to the end
% of array 'A'
% ex. addToEnd([1 2 3],9) --> ans = 1 2 3 9
% ex. s = [1 2 34]; addToEnd(s,90) --> ans = 1 2 34 90
L = length(A);
A(L+1) = x;
res = A;
