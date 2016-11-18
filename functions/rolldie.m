function res = rolldie(a)
% function rolls a die 'a' amount of times
% outputs number with the highest amount of rolls/total
count1 = 0; count2 = 0; count3 = 0; count4 = 0; count5 = 0; count6 = 0;
for j = 1:a
x = ceil(6*rand(1));
if x == 1
    count1 = count1+1;
elseif x == 2
    count2 = count2+1;
elseif x == 3
    count3 = count3+1;
elseif x == 4
    count4 = count4+1;
elseif x == 5
    count5 = count5+1;
elseif x == 6
    count6 = count6+1;
end
end
count1/a; count2/a; count3/a; count4/a; count5/a; count6/a;
high_prob = [count1/a count2/a count3/a count4/a count5/a count6/a];
[Prob, Number] = max(high_prob);

