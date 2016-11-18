% Refractive Index 1
n1 = 1.48;
% Refractive Index 2
n2 = 1.46;
% Wavelength
lambda = .82e-6;
% Incident Angle (85deg = 1.48353rad, etc)
%theta = 1.48353;
theta = 1.396:.01:1.57;
% Velocity in free space
c = 3e8;
% Frequency
f = c/lambda;
% Angular frequency
w = 2*pi*f;
% Propagation Constant in free space
ko = w/c;
%d = 1e-3:1e-3:2;
h = 2*pi*n1*lambda*cos(theta);
q = (n1*cos(theta)).^-1;
% Attenutation coefficient
alpha = sqrt((n1.^2)*(sin(theta).^2)-(n2.^2));
% d/lambda
x = ((2)./(atan(q.*alpha)))./(2*pi*n1*cos(theta));
plot(x,theta)
