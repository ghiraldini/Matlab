% Elm Street Census
% Matrix = #residents | #adults | #children | income
elmstreet = [3,2,1,35000;
            5,2,3,41000;
            2,1,1,25000;
            2,2,0,56000;
            4,2,2,62000;
            5,3,2,83000;
            1,1,0,52000];

% Mean income per adult for each family
M = elmstreet(:,4) ./ elmstreet(:,2);

% Fraction of families with children that have single adult
F = sum(((elmstreet(:,2) == 1) & (elmstreet(:,3) > 0)) ./ (length(elmstreet)));


           