% Plot signal voltage vs. output power for
% Mach-Zehnder Interferometer

Pi = 1;
w = -pi:.001:pi;
t = 1;
V = 6.*cos(w*t);
v = V/6;
Vpi = 10;
Po = .5*(1 + sin(.1*(pi.*V)));
% plot output power
subplot(2,2,1); plot(w,Po)
xlim([-pi pi]);
ylim([0 1.05]);
title('Output Power');
xlabel('Voltage');
ylabel('Power');
% plot input voltage
subplot(2,2,2); plot(w,V,'r')
xlim([-pi pi]);
ylim([-6 6.05]);
title('Input Voltage');
xlabel('Time');
ylabel('Voltage');
% compare both
subplot(2,2,3); 
plot(w,Po)
hold on 
plot(w,v,'r')
xlim([-pi pi]);
ylim([0 1.05]);
title('Output Power & Input Voltage');
xlabel('Voltage');
ylabel('Po/Pi');