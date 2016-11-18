function q = insert(A,k)
% function takes index input and places
% num into correct place of previous values
temp = A(k);
j = k-1;
while j > 0
    if((A(j) > temp))
        A(j+1) = A(j);
    else
        break;
    end;
    j = j-1;
end;
A(j+1) = temp;
q = A;