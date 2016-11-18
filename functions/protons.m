function res = protons(atom)
% function returns number of protons in atom 
% for the first 18 elements
symbols = {'H', 'He', 'Li', 'Be', ...
'B', 'C', 'N', 'O', 'F', 'Ne', ...
'Na', 'Mg', 'Al', 'Si', 'P', 'S', 'Cl', 'Ar'};
nprotons = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,12, 13, 14, 15, 16, 17, 18];
ind = strcmpi(atom, symbols); % Case independent
if ~any(ind)
 error([atom, ' not an atomic symbol']);
else
res = nprotons(ind);
end
