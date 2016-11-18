function setprint(cellset)
% prints every member of the cell in one line
% assume cellset is a collection of sets of integers
for k=1:length(cellset)
   %fprintf('%d', cellset{k}); 
   fprintf('%s', cellset{k})
   %fprintf('\n');
end;