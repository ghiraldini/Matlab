% Plot the fractional power reaching output ports 2 & 3
% for values of length of the coupling region from
% 0 - 2Lc
% Assume P1 = 1w
%Lc = 10;
%L = 0:.1:2*Lc;
L = 0:.0001:2;
Lc = 3;
%P2 = cos((pi*L)./(2*Lc)).^2;
P3 = sin((pi*L)./(2*Lc)).^2;
plot(L,P2)
%hold on 
%plot(L,P3,'r')
title('Fractional Power');
xlabel('Length');
ylabel('Power');
