function out = test_orthogonal_latin_square(a,b)
%---------------------test a--------------------
L = length(a);
q = 1:L;
s = sum(q) == sum(a); 
j = 1;
i = 1;
for j = 1:L
R1 = sum(a(j,:));
y(i) = [R1];
i = i+1;
end
y;
t = y == sum(q);
E = sum(t)/length(t) == 1;
F = sum(s)/length(s) == 1;
if (t == s & E == 1 & F == 1)
   out = 1;
else
   out = 0;
end
if out == 0
    out = 'False';
    return;
end
out;
%------------------------test b-------------------------
L = length(b);
q = 1:L;
s = sum(q) == sum(b); 
j = 1;
i = 1;
for j = 1:L
R1 = sum(b(j,:));
y(i) = [R1];
i = i+1;
end
y;
t = y == sum(q);
E = sum(t)/length(t) == 1;
F = sum(s)/length(s) == 1;
if (t == s & E == 1 & F == 1)
   out = 1;
else
   out = 0;
end
if out == 0
    out = 'False';
    return;
end
out;
%------------------------------test pair------------------
q = [];
j = 1;
for i = 1:length(a)
    q(j,:) = [a(i,:)];
    q(j+1,:) = [b(i,:)];
    j = j+2;
end
q;
count = 0;
j = 1;
x = 1;
k = 2;
y = 2;
for s = 1:length(a)
    for z = 1:length(a)
        j = 1;
        k = 2;
        for i = 1:length(a)
            if((q(x:y,z)==q(j:k,i))==1)
                count = count+1;
            end;
        end;
        j = j+2;
        k = k+2;
        if count > length(a)
            out = 'False';
            break;
        else
            out = 'True';
        end
    end
    x = x+2;
    y = y+2;
end
out;