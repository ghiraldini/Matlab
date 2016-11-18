% Refractive Index 1
n1 = 3.6;
% Refractive Index 2
n2 = 3.55;
% Wavelength
lambda = .82e-6;
% Incident Angle (85deg = 1.48353rad, etc)
%theta = 1.48353;
theta = 1.4039:1e-3:1.57079;
% vertical component of propagation factor 'k'
h = 2*pi*n1*lambda*cos(theta);
% factor of equation 4.11
q = (n1*cos(theta)).^-1;
% Attenutation coefficient
alpha = sqrt((n1.^2)*(sin(theta).^2)-(n2.^2));
% Neff
Ne = n1.*sin(theta);
% thickness 
d = lambda.*((((2)./(atan(q.*alpha)))./(2*pi*n1*cos(theta)))./h);
% hd
x = 2.*atan(q.*alpha);
% 2*pi*n1*cos(theta)
x1 = 2.*pi.*n1.*cos(theta);
% d/lambda
y = x./x1;
% Plot
plot(y,Ne)
title('Mode Chart');
xlabel('d/lambda');
ylabel('Propogation Angle/Neff');
ylim([3.555 3.6001]);
xlim([0 6]);