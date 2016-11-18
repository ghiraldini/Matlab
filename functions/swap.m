function A = swap(B)
% Function to swap that takes as input an array of integers
% and returns an array by swapping the max key in index 1.

B = [1, 2, 8, 4, 7, 5, 6];
% returns max number and index
[key, ind] = max(B);
% swaps number with index 1
B(1) = B(1) + B(ind);
B(ind) = B(1) - B(ind);
B(1) = B(1) - B(ind);
A = B;

