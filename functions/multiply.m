function out = multiply(a,b)
%Test EX: a = '278372008913718738172328372837';
%Test EX: b = 3541;
c = 0;
answer = 0;
L = length(a); 
r = a(end:-1:1); 
[q] = strread(r,'%4f',L);
L1 = length(q);
array = [];
w = num2str(q);
for i = 1:L1  
    array(i,:) = w(i,end:-1:1);
end
A = str2num(char(array));
for i = 1:L1
    z = A(i)*b + c;
    c = floor(z/10000); 
    answer(i) = mod(z,10000);
end
ANSWER = [answer(1:L1),c];
out = num2str(ANSWER(end:-1:1));
out(isspace(out)) = [];
out;