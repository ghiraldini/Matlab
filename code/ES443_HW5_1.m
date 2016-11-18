V = 3;
Vpi = -2*pi:1:2*pi;
P = .5*(1 + cos(pi*V./Vpi));
plot(Vpi,P)
xlim([-.0005 .0005]);