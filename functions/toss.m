function res = toss(a)
flip_count = 0;
Awins = 0;
Bwins = 0;
for k = 1:a
while(1)
    for j = 1:3
        x = rand(1);
        if (x > .5)
            flip = 2; % Heads
            y(j) = flip;
            flip_count = flip_count + 1;
            elseif (x < .5)
                flip = 1; % Tails
                y(j) = flip;
                flip_count = flip_count + 1;
        end
    end
    y;
if(y == [1 2 1])
    'Player 1 Wins';
    games_played = flip_count/3;
    flip_count;
    games_played;
    Awins = Awins + 1;
    break;
elseif (y == [2 1 2])
    'Player 2 Wins';
    games_played = flip_count/3;
    flip_count;
    games_played;
    Bwins = Bwins + 1;
    break;
end
end
end
Probability_that_Player1_Wins = Awins/a % percentage that Player 1 wins
