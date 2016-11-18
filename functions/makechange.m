function out = makechange(a, b)
usdemons = [100 50 20 10 5 1 .25 .10 .05 .01];
ukdemons = [100 20 10 5 2 1 .5 .2 .1 .05 .02 .01];
eudemons = [500 200 100 50 20 10 5 2 1 .5 .2 .1 .05 .02 .01];
switch (b)
    case {'usdemons'}
        for i = 1:length(usdemons)
            amount = floor(a/usdemons(i));
            left = rem(a,usdemons(i));
            y(i) = amount;
            a = left;
        end
    case {'ukdemons'}
        for i = 1:length(ukdemons)
            amount = floor(a/ukdemons(i));
            left = rem(a,ukdemons(i));
            y(i) = amount;
            a = left;
        end
    case {'eudemons'}
        for i = 1:length(eudemons)
            amount = floor(a/eudemons(i));
            left = rem(a,eudemons(i));
            y(i) = amount;
            a = left;
        end
    otherwise
        error('Must enter: (number,''us/uk/eu/demons'')');
end
out = y;