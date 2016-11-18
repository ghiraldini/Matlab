% Vectors shown front and backwards
>> x = [1 2 3 5 2 56];
>> x

x =

     1     2     3     5     2    56

>> x(1:2:ceil(end))

ans =

     1     3     2

>> x(end:-1:1)

ans =

    56     2     5     3     2     1

% Remove numbers of vector
v = [1 3 5 7 11 9 19];
k = [2 4 5];
v(k) = [];
