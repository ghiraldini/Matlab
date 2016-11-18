function out = get_change(a,b,c,d,target,demons,max_use,j,k,count)
for i = 1:max_use(j)+1
    x = target/demons(k);
    target = target-demons(j);
    change{a} = x;
    change{b} = count;
    change{c} = 0;
    change{d} = 0;
    change
    count = count+1;
end