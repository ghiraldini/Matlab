function out = change(demon,cash)
%demon = [1 5 10 25];
%cash = 47;
x = cash;
for i = 1:length(demon)
    amount = floor(cash/demon(i));
    left = rem(cash,demon(i));
    change_is(i) = amount;
    cash = left;
end
change_is
while (change_is(1) > demon(2))& change_is(1) ~= 1
    change_is(1) = change_is(1)-demon(2);
    change_is(2) = change_is(2)+1;
    change_is
end
while (change_is(2) >= change_is(3)) & change_is(2) ~= 1
    change_is(2) = change_is(2)-2;
    change_is(3) = change_is(3)+1;
    change_is
end
while (change_is(2) ~= 0) & (change_is(3) > 1)...
        & (sum(change_is(2:3)>=0))/(length(change_is(2:3)))
    change_is(2) = change_is(2)-1;
    change_is(3) = change_is(3)-2;
    change_is(4) = change_is(4)+1;
    change_is
end
while change_is(1) == demon(2) & change_is(2)>=0 & change_is(3) >= 1
    change_is(1) = change_is(1)-demon(2);
    change_is(2) = change_is(2)-2;
    change_is(3) = change_is(3)-1;
    change_is(4) = change_is(4)+1;
    if change_is(2) < 0
        change_is(2) = change_is(2)+2;
    end
    change_is
end
while change_is(2) >= 1 & change_is(3)>=1
    change_is(2) = change_is(2)-2;
    change_is(3) = change_is(3)-1;
    change_is(4) = change_is(4)+1;
    change_is
end
