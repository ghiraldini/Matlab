function out = total1(c)
out = 0;
for j = 1:length(c)
    if isnumeric(c{j})
        out = out + c{j};
    else
        out = out + total1(c{j});
    end;
end;