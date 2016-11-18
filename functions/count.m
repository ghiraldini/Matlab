function out = count(a)
distinct = [];
count_pair = [];
distinct_pair = [];
['Total number of letters = ',num2str(length(a))];
% Find distinct chars in string
for k = 1:length(a)
    if isempty(find(distinct==a(k)))
    distinct(:,k) = a(k);
    end
end
distinct(find(distinct==0)) = [];
char(distinct); % distinct chars in string
['Number of distinct letters = ',num2str(length(distinct))];
% Find occurances of distinct letters in string
for j = 1:length(distinct)
    [r,c] = find(a == char(distinct(j)));
    ['Count(',num2str(char(distinct(j))),') = ',num2str(sum(r))];
end

% Find distinct adjacent pairs in string
for i = 1:length(a)-1
    count_pair(i,:) = a(i:i+1); % Finds all adjacent pairs of chars
    ['Count(',num2str(char(count_pair(i,:))),') = ',num2str(length(findstr((count_pair(i,:)),a)))]
end
