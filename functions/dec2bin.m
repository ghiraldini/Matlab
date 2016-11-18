function bin = dec2bin(n)
% function converts decimal to binary
 if n == 0 bin = '0';
 else
     bin= '';
     while ~(n==0)
         if mod(n,2)==0 
             bit = '0';
         else bit = '1';
         end;
         bin = strcat(bit,bin);
         n = floor(n/2);
     end;
 end;
