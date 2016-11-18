function res = isvowel(letter)
% function tells whether letter is a vowel
 switch(letter)
case 'a'
 res = 1;
case 'e'
 res = 1;
case 'i'
 res = 1;
case 'o'
 res = 1;
case 'u'
 res = 1;
otherwise
 res = 0;
 end;
% Alternate solution
% function res = isvowel(letter)
% res = any(letter == 'aeiou');