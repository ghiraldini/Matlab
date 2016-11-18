function box = whichbox(puzzle, row, col)

% DESCRIPTION:
% This function takes three inputs:
%   'puzzle': A standard sudoku puzzle in matrix form with all the blank
% spots filled with zeros. For example, 
% puzzle=[7 0 0 5 8 3 0 0 6; 0 0 6 0 0 1 4 0 5; 0 5 2 0 0 6 0 8 3; 3 0 0 2
% 0 0 9 5 8; 5 0 0 0 7 8 0 6 0; 6 4 8 0 1 0 3 0 0; 0 6 0 8 0 2 5 0 0; 0 0 3
% 1 5 0 0 7 2; 2 1 5 6 0 0 0 3 0];
%   'row'/'col':    The row/column index of a particular zero.
% The function then determines which 3x3 box (region) this zero belongs to.
% For example, the indices of the first zero in the first row in 'puzzle'
% is (1, 2). The function will tell you that this zero is located in the
% top-left region, which is
% 7 [0] 0
% 0  0  6
% 0  5  2

for i = [1 4 7]
    for j = [1 4 7]
        if (row >= i && row <= (i+2) && col >= j && col <= (j+2))
            box = puzzle(i:(i+2), j:(j+2));
        end
    end
end