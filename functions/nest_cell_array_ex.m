F{1,1} = [1 2; 3 4];
F{1,2} = [-1 0; 0 1];
F{2,1} = [7 8; 4 1];
F{2,2} = [4i 3+2i; 1-8i 5];

%for k = 1:4
%   for i = 1:2
%      for j = 1:2
%         NUM(i,j,k) = F{k}(i,j);
%      end
%   end
%end
%NUM
G = cell(1,16);
for m = 1:16
   G{m} = NUM(m);
end
G