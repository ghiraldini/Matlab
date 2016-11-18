function res = test_latin_square(a)
% This function takes input of NxN matrix
% and test to see if it is a latin square
L = length(a);
q = 1:L;
s = sum(q) == sum(a); % test cols
j = 1;
i = 1;
for j = 1:L
R1 = sum(a(j,:));
y(i) = [R1];
i = i+1;
end
y;
t = y == sum(q);
E = sum(t)/length(t) == 1;
F = sum(s)/length(s) == 1;
if (t == s & E == 1 & F == 1)
   result = 'True'
   %result = 1;
else
   result = 'False'
   %result = 0;
end
