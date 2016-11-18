function res = BooleanToTF(bool)
res = char('F' + zeros(size(bool)));
res(bool) = 'T';
