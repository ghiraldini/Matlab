function g = eliminate(a)
% Function elimates 'e' and 'E'
a(find(a == 'e' | a == 'E')) = '*';
g = a;