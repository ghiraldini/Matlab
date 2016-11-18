function out = sodoku_solver(sqr)
% Modified to solve sodoku puzzle = sqr
%Test EX: sqr = [1 0 4 0;0 0 1 4;3 4 0 0;4 0 0 2];
while 1
    [r,c] = find(sqr == 0); % Find all zeros in matrix
    y = size(r); % Number of zeros in matrix
    x = y(1); % Max Number of zeros
    if x == 0
        break;
    end
    for j = 1:2
        w = [];
        for i = 1:x
            q = [r(i),c(i)]; % First zero -> last zero
            r1 = q(1); % Row & col of zero
            c1 = q(2);
            r2 = sqr(r1,:); % Numbers in row & col
            c2 = sqr(:,c1);
            [rows,cols] = size(sqr); % Rows = Max amount of numbers (i.e. 9)
            u = union(r2,c2); % Row and col numbers
            s = 1:rows; % Array of max numbers (i.e. 1 - 9)
            list = setdiff(s,u); % Candidate list ((1-9)-union)
            w(i,:) = size(list); % Size of candidate list    
        end
        w(:,1) = []; % Get rid of row 1 = Sizes of list
        [r_min,c_min] = min(w); % Find Minimum cadidate list place
        x = c_min; % Stop candidate list at min children
    end
    if isempty(list) % Cells have no candidate list = Failure!!!
        'Failure'
        break;
    end
    sqr(r1,c1) = list(1); % Replace zero with first number in list
end
sqr

