function particle
count = 0;
count_zero = 0;
count_25 = 0;
attempts = 10000;
for i = 1:attempts
    start = 10;
    while 1
        jump = floor(rand(1)*2);
        if jump < 1
            start = start + 1;
            count = count + 1;
            if start > 24
            count_25 = count_25 + 1;
            break;
            end
        else
            start = start-1;
            count = count+1;
            if start < 1
            count_zero = count_zero + 1;
            break;
            end
        end;
    end;
end;
['Amount of jumps: ',num2str(count/attempts)]
['Landed at (0,0): ',num2str(count_zero/attempts)];
['Landed at (25,0): ',num2str(count_25/attempts)]
['Landed at (25,0)/(0,0): ',num2str((count_25/attempts)/(count_zero/attempts))];