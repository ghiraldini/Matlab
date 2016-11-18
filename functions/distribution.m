% if 'pi' is the stationary distribution
% then A*pi = pi holds.

%   Must be strongly connected:
%       Each link must be able to go to another state
%   Must be aperiodic:

% approach 1 - start with s and perform
% iteration: n = A^n*So

% approach 2 - (A-I)pi = 0
% approach 3 - Ax = b
% A^-1(Ax) = A^-1*b
% x = A^-1*b

format long
A = [1/3 1/2 2/5;
    1/3 1/4 0;
    1/3 1/4 3/5];

s = [1/3 1/3 1/3]';
p = A^1000*s

% solving using linear system equations
% A*[x y z] = s
B = [-2/3 1/2 2/5;
    1/3 -3/4 0;
    1 1 1];

B^(-1)*[0 0 1]'
