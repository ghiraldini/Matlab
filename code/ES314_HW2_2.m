% Function that regenerates vector randomly
% Vector array
V = [1 54 7 3 78 0 9];
% Randomize vector
z = randperm(size(V,2));
% New vector
V(z)
