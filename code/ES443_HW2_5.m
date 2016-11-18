% Transmitted Angle vs Incident Angle

% Incident Refractive Index
N1 = 1.48;

% Transmitted Refractive Index
N2 = 1.46

% Incident Angle
theta1 = 0:2.*pi./180:pi./2;

% Transmitted Angle
theta2 = asin((N1 ./ N2) .* sin(theta1));

plot(theta2, theta1);
title('Transmitted Angle as Function of Incident Angle');
xlabel('Incident Angle (0 - pi/2)');
ylabel('Transmitted Angle');
