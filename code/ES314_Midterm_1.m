% ES314 Mid-term #1 - problem 1
% Jason Ghiraldini
M = [5 9 168;
    5 8 152;
    5 11 201;
    6 2 192;
    5 6 148;
    6 3 188;
    5 9 168;
    5 5 133;
    6 0 245];
%1a) Averge weight of group
Ave_wieght = sum(M(:,3))/length(M(:,3));
%1b) Max height of group
x = max(M(:,1));
[row,col] = find(M(:,1) == x);
[r,c] = max(M([row],2));
h = row(c);
Max_height = M(h,[1 2]);
%1c) Weights in increasing order
Weights = sort(M(:,3));

%1d) Anyone over 6 ft tall
q = max(M(:,1));
if (q == 6)
    'YES'
else
    'NO'
end

%1e) Anyone at least 5 ft tall
[q,w] = find(M(:,1) == 5)
if(length(w) > 1)
    'YES'
else
    'NO'
end

%1f) Number of people over average weight
[a,b] = find(M(:,3) > sum(M(:,3))/length(M(:,3)));
Num_grtr_ave = length(a);


