function res = morsechar(a)
switch (a)
    case {'a', 'A'}
        res = [1 3 2];
    case {'b', 'B'}
        res = [2 3 1 3 1 3 1];
    case {'c', 'C'}
        res = [2 3 1 3 2 3 1];
    case {'d', 'D'}
        res = [2 3 1 3 1];
    case {'e', 'E'}
        res = [1];
    case {'f', 'F'}
        res = [1 3 1 3 2 3 1];
    case {'g', 'G'}
        res = [2 3 2 3 1];
    case {'h', 'H'}
        res = [1 3 1 3 1 3 1];
    case {'i', 'I'}
        res = [1 3 1];
    case {'j', 'J'}
        res = [1 3 2 3 2 3 2];
    case {'k', 'K'}
        res = [2 3 1 3 2];
    case {'l', 'L'}
        res = [1 3 2 3 1 3 1];
    case {'m', 'M'}
        res = [2 3 2];
    case {'n', 'N'}
        res = [2 3 1];
    case {'o', 'O'}
        res = [2 3 2 3 2];
    case {'p', 'P'}
        res = [1 3 2 3 2 3 1];
    case {'q', 'Q'}
        res = [2 3 2 3 1 3 2];
    case {'r', 'R'}
        res = [1 3 2 3 1];
    case {'s', 'S'}
        res = [1 3 1 3 1];
    case {'t', 'T'}
        res = [2];
    case {'u', 'U'}
        res = [1 3 1 3 2];
    case {'v', 'V'}
        res = [1 3 1 3 1 3 2];
    case {'w', 'W'}
        res = [1 3 2 3 2];
    case {'x', 'X'}
        res = [2 3 1 3 1 3 2];
    case {'y', 'Y'}
        res = [2 3 1 3 2 3 2];
    case {'z', 'Z'}
        res = [2 3 2 3 1 3 1];
    case {'.'}
        res = [1 3 2 3 1 3 2 3 1 3 2];
    case {','}
        res = [2 3 2 3 1 3 1 3 2 3 2];
    case {':'}
        res = [2 3 2 3 2 3 1 3 1 3 1];
    case {'?'}
        res = [1 3 1 3 2 3 2 3 1 3 1];
    case {''''}
        res = [1 3 2 3 2 3 2 3 2 3 1];
    case {'-'}
        res = [2 3 1 3 1 3 1 3 1 3 2];
    case {'()'}
        res = [2 3 1 3 2 3 2 3 1 3 2];
    case {'"'}
        res = [1 3 2 3 1 3 1 3 2 3 1];
    otherwise
        error('No conversion, only single characters');
          
end

      
       