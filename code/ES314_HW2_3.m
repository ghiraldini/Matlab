% Circuit Analysis of RL circuit.
% Circuit Values
r = 4;
L = 1.3;
v = 12;
% Time1 and Charging Equation
t1 = 0:.1:.5;
i1 = (v./r).*(1 - exp((-r.*t1)./L));
% Time2 and Discharging Equation
t2 = .5:.1:2;
i2 = exp(-((r.*t2)./L)).*(v./r).*((exp((.5.*r)./L)) - 1);
% Combine Plots
plot(t1,i1)
hold on
plot(t2,i2)

title('Current vs Time');
xlabel('Time (s)');
ylabel('Current (A)');