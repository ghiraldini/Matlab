function out = my_insert(i,1st)
% inserts i into each memer of 1st
for j = 1:length(1st)
    out{j} = [i, 1st{j}];
end;