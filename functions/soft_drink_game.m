function out = soft_drink_game(tokens,prob,attempts)
% Input Ex:
% tokens = [1 2 3 4 5];
% prob = [.5 .3 .7 .3 .2];
% attempts = 1000;
rec = [];
rec(1:length(tokens)) = 0;
count = 0;
scount = 0;
i = 1;
for j = 1:attempts
    count = 0;
    while 1
        count = count+1;
        x = rand(1);
        if x <= prob(i) & rec(i) == 0
            rec(i) = tokens(i);
            i = i + 1;
            if sum(rec) == sum(tokens)
                break;
            end
        end
    end
    i = 1;
    rec(1:length(tokens)) = 0;
    scount = scount + count;
end
scount/attempts