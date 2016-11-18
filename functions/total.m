function out = total(c)
% function determines total number in cell array
sum = 0;
for j = 1:length(c)
    if isnumeric(c{j})
        sum = sum + c{j};
    else
        j = j+1; 
    end
end
out = sum;
