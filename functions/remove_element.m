% Statement that returns second smallest number in array
a = [1 4 6 8 43 -3 -5 90];
[num, ind] = min(a);
a(ind) = [];
min(a)
