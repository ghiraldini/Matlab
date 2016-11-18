% fprintfDemo.m
% (c)2000 g.m.dick
% script demonstrates simple use of fprintf for screen output.
% caution using %d if value is not an integer.
a = input('Enter a: ');
fprintf('a = %e \n', a);
pause
fprintf(' d-format = %d \n f-format = %f\n', a, a) 
fprintf(' 6.2f-format = %6.2f\n', a)

