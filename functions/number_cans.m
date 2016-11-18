function out = number_cans(a,m)
% takes as input a vector 'a' of size 'n'
% where a(j) = prob that the can contains token = j
% pre-condition: a(1) + ... + a(n) = 1*0
% m = # of times the simulation is performed

%----------------suedo code------
sum = 0;
for j = 1:m
    initalize array b = (0,0,...0);   all zeros
        count = 0;
    while some prob(j) ~= 0
        r = my_rand(a);
        b(r) = b(r) + 1;
    end;
    sum = sum + count;
end
out = sum/m;
%-----------------my_rand suedo-------------
% We need a function my_rand(a) 
% which generates a random number between 
% 1 and 'n'
% prob(1) = a(1)
% prob(2) = a(2)
% prob(n) = a(n)
>> my_rand([a1 a2 a3...an])
