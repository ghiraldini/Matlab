function out = ravi_perm(a)
n = length(a);
if n == 1
    out = {[a(1)]};
else
    out2 = ravi_perm(a(2:n));
    for j = 1:n
        out1 = insertp(a(1),j,out2);
        out = [out,out1];
    end;
end
setprint(out)
