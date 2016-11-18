function L = candidate_list1(A, r, c)
% generates the candidates for the cell A[r,c]
r1 = A(r,:); c1 = A(:,c);
s1 = r1(r1 ~= 0); s2 = c1(c1 ~= 0);
L = setdiff(1:size(A,1), union(s1,s2));