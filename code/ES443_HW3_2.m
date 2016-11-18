% Plot Power vs. Time
t = 0:.1:10;
f = 1;
w = 2*pi*f;
% phi2 - phi1 = 0, pi/2, pi
phi1 = 0;
phi2 = pi;
d = phi2-phi1;
p1 = (2) + (1).*cos(w.*t + phi1);
p2 = (2) + (1).*cos(w.*t + phi2);
pt = 4 + 2.*cos(d./2).*cos(w.*t + phi1 + d./2);

plot(t,pt,'r')
hold on
plot(t,p1,'b')
hold on 
plot(t,p2,'y')
title('Power vs. Time');
xlabel('Time(s)');
ylabel('Amplitude(micro-watts)');
