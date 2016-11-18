 function res = permutes(array)
a = [];
per = perms(array(2:end));
k = 1;
for j = 1:factorial(length(array)-1)
   fline = per(j,:);
  for i = 1:length(array)
      x = fline;
      z = x(i:end);
      x(i:end) = [];
      x(i) = array(1);
      x = [x z];
      a(i,:) = x;      
  end
   eval(['A_' num2str(j) '=a']);
end 