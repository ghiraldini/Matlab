function candidates = rcb(input)

% DESCRIPTION:
% This function takes an input which could be one of the following:
%   1. A row from a sudoku puzzle, such as [7 0 0 5 8 3 0 0 6], where "0"
%      denotes a blank spot waiting to be filled.
%   2. A column from a sudoku puzzle.
%   3. A 3x3 box (region) from a sudoku puzzle, e.g. [5 0 0; 0 7 2; 0 3 0];
% The function then returns an 1D output array whose size is equal to the
% number of zeroes in the input and whose elements are those numbers
% (between 1 and 9) which need to be filled into the input array to
% complete that row, column, or region, according to the rules of sudoku.
% For example, for the input [7 0 0 5 8 3 0 0 6], the function returns:
%   candidates =
%       1     2     4     9

fullset = 1:9;

if min(size(input)) ~= 1
    input = input(:);
end

candidates = setdiff(fullset, input);