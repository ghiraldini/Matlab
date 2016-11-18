x = 'abaa';
x = int2str(x);
x(isspace(x)) = [];
x = str2num(x);
word = [];
j = 1;
for i = length(x)-1
    word(j:j+1) = x(i:i+1)
    j = j+2;
end