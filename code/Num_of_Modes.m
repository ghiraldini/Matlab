n1 = 1.5;
n2 = 1.485;
l = 1.2e-6;
a = 50e-6;
v = (2*pi*a)./(l).*sqrt(n1.^2 - n2.^2);
n = (v.^2)./2;
%-----plot #17--------------------
t = 30e-9;
L = 0:.1:.5;
L1 = .5:.1:5;
Lt = 0:.1:5;
Le = .5;
dt = sqrt(Lt*Le)*t;
fe = .35./(L.*t);
fe1 = .35./(sqrt(Le.*L1).*t);
fo = 1./(2.*L.*t);
fo1 = 1./(2.*sqrt(Le.*L1).*t);
Rrz = .35./(dt);
Rnrz = .7./(dt);

%plot(L,fe,'r')
%hold on
%plot(L1,fe1,'r')

%plot(L,fo)
%hold on
%plot(L1,fo1)
plot(Lt,Rrz,'g')
hold on
plot(Lt,Rnrz,'y')
title('Maximum Rates');
xlabel('Length (km)');
ylabel('Data Rate (bps)');