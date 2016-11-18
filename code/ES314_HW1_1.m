% Day & Month of My Bday
m = 3;
d = 8;
% Day & Month of Friends Bday
M = 5;
D = 7;

% My birthday is earlier than friends
((m < M) | (m == M & d < D));

% Birthdays are closer together than 2 months
(M == m & D <= d) | (M + 1 == m & D <= d) | (M+2 == m & D >= d) | ...
    (m == M & d <= D) | (m+1 == M & d <=D) | (m+2 == M & d >= D)
