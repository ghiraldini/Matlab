function res = add(num1,num2)
% num1 and num2 can be up to 100 digits long
% take num1 string and convert into vector 
% broken up into increments
% i.e. (num1 = 32408580934)
%  v1 ---> [934 580 408 32]
% (num2 = 2340954)
%  v2 ---> [954 340 2]
% v = v1 + v2 = [addition]
% addition vector will be backwards.
% beware of 'carry'
