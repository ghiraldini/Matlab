function [r,c] = first_zero_row(A)
% outputs the first row that contains a zero entry
% returns 0 if there is no such row
 r = 1;
 while r <= size(A,1) 
     if sum(A(r,:)==0) > 0 
         temp = find(A(r,:)==0);
         c = temp(1);
         return;
     else r = r + 1;
     end;
 end;
     r = 0; c = 0;