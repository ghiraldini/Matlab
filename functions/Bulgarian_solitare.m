%function res = Bulgarian_solitare()
A = [5 5];
w = 1;
while~(A == 1:length(A))
B = A - 1; % subtract 1 from each element
q = A - B; % number of subtractions
sum(q);    % Sum of subractions = new number
L = length(A); 
B(L+1) = sum(q); % add new number to array

[r,c] = find(B == 0); % find zeros in array
B(c) = []; % remove zeros from array

T = sort(B)
p = max(B);
W = 1:p;
A = B;

end
    