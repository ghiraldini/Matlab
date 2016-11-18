function out = repeat_nums(m)
% funtion repeats value by specified amount
% ex.   repeat([2 3;3 1;4 2])
% ans:   [222344]
% --OR--   
% A = [2 3;3 1;4 2];
% repeat(A)
% ans:   [222344]
out = [];
[r, c] = size(m);
for i = 1 : r %Go through each row
for j = 1 : m(i, 2)
%Repeat the number of times specified in the second column
  out(end + 1) = m(i, 1);
 end
end
