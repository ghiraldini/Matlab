a = ['asf ','asdfsd ','asdfasd '];
x = find(isspace(a));
j = 1;
i = 1;
for u = 1:length(x)    
    a(i:x(j))
    i = x(j)+1;
    j = j+1;
end