function out = permute_test(a)
% Takes array 'a', and gets the permutations of 'a'
% except for the first value.
% This takes the first line of the permutations list
% and inserts the first value into all the keys.
% It does this for all the lines.
permuations = [];
q = perms(a(2:end)); % get perms
for j = 1:fact(length(a)-1) % loop 1
    c = q(j,:); % get first line of perms
   for i = 1:length(a)
       b = c;
       y = b(i:end); % put values into different array
       b(i:end) = []; % delete values
       b(i) = a(1); % add first value to end of remaining array
       b = [b y]; % combine to have all values
       permutations(i,:) = b; % put into matrix
   end 
      permutations
end