function out = coins(demons,target)
%demons = [1 5 10 25];
%target = 47;
max_use = floor(target./demons);
change = {};
count = 0;
a = 1;b = 2;c = 3;d = 4;j = 2;k = 1;
for i = 1:3
    get_change(a,b,c,d,target,demons,max_use,j,k,count);
    b = b+1;
    if i == 1
        c = c-1;
    end
    if i == 2
        d = d-1;
    end    
    j = j+1;
    k = 1;
    count = 0;
end
