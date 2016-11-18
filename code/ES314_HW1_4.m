% Sum of inverse numbers squared
x = ([1:100] .^ 2) .^ -1;
sum(x);
x = sqrt(sum(x).*6)

