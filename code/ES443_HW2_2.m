% Numerical Appeture vs Acceptance Angle
% NA = sin(theta)

% Accpetance Angle
theta = 0:2.*pi./180:.7;

% Numerical Appeture
N = sin(theta);

% Plot
plot(theta, N);
title('Numerical Appeture vs Accpetance Angle');
xlabel('Numerical Appeture');
ylabel('Accpetance Angle');