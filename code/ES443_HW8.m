f = 0:500;
w = 2*pi*f;
T = 1.59e-3;
x = w*T;
Psp = 1./(sqrt(1+(w.^2).*(T.^2)));
plot(x,Psp)
title('AC Optic Power');
xlabel('wt');
ylabel('Psp/a1Isp');