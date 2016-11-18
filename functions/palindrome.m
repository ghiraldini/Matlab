function q = palindrome(str)
str = lower(str);
str(~isletter(str)) = '';
reversedStr = str(end:-1:1);
q = strcmp(str, reversedStr);
