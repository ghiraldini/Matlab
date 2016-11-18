% Student ID's and Scores of Test 1 + 2
M = [534687 90 74;
    556135 88 89;
    501011 79 100;
    499893 69 80;
    595101 79 55;
    501441 69 99;
    480932 73 73];

% Student with High Score on Test 1
[r,c] = max(M(:,2));
M(c);

% Student with most total points
[r,c] = max(M(:,2) + M(:,3));
M(c);

% Average Score on Tests
Test1 = (sum(M(:,2)))./length(M(:,2));
Test2 = (sum(M(:,3)))./length(M(:,3));

if(Test1 > Test2)
'Test 1'
else
'Test 2'
end