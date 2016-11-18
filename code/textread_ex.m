% Read text one word at a time
textread('mobydick1.txt', '%s', 'whitespace', ' -,.?!')

% Read text by new lines
textread('mobydick1.txt', '%s', 'whitespace', '\n')
