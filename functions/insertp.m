function out = insertp(key, i, lst)
% inserts key into each membet of lst at position i
if length(lst)==0
    out = {key}; return;
end;
for j = 1:length(lst)
    out{j}= ins(key, i, lst{j});
end;
