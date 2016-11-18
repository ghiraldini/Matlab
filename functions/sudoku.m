function out = sudoku(board)
[r,c] = first_zero_row(board);
if (r ~= 0)
    L = candidate_list1(board,r,c);
    while size(L) ~= 0
        board(r,c) = L(1);
        L = L(2:end);
        out = sudoku(board);
        [r1,c1] = first_zero_row(out);
        if r1 == 0
            return;
        else
            board(r,c) = 0;
        end;
    end;
end;
out = board;