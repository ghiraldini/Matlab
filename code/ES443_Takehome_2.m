% Refractive Index 1
n1 = 1.48;
% Refractive Index 2
n2 = 1.46;
% Incident Angle (85deg = 1.48353rad, etc)
%theta = 1.4039:1e-6:1.57079;
theta = 1.4039; %cutoff
% lambda
lambda = .82e-6;
% factor of equation 4.11
q = (n1*cos(theta)).^-1;
% Delta(d/lambda)
z = 1./(2.*n1.*cos(theta));
% Delta(d/lambda)
z = 1./(2.*n1.*cos(theta));
% Attenutation coefficient
alpha = sqrt((n1.^2)*(sin(theta).^2)-(n2.^2));
% Neff
Ne = n1.*sin(theta);
% hd
x = 2.*atan(q.*alpha);
% 2*pi*n1*cos(theta)
x1 = 2.*pi.*n1.*cos(theta);
% (d/lambda)0
y = x./x1;
% (d/lambda)1
y1 = y + z;
y1*lambda; %d
% (d/lambda)2
y2 = y1 + z;
y2*lambda; %d
% (d/lambda)3
y3 = y2 + z;
y3*lambda; %d