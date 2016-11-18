% Plot evanescent electric field decay
% Refractive Index 1
n1 = 1.48;
% Refractive Index 2
n2 = 1.46;
% Wavelength
lambda = .82e-6;
% Incident Angle (82deg = 1.43rad, etc)
theta = 1.4312;
theta1 = 1.4661;
theta2 = 1.501;
theta3 = 1.5359;
theta4 = 1.5708;
% Velocity in free space
c = 3e8;
% Frequency
f = c/lambda;
% Angular frequency
w = 2*pi*f;
% Propagation Constant in free space
ko = w/c;
% Wavelenth range
z = 0:1e-9:4e-6;
% Attenutation coefficient
alpha = ko*sqrt((n1.^2)*(sin(theta).^2)-(n2.^2));
alpha1 = ko*sqrt((n1.^2)*(sin(theta1).^2)-(n2.^2));
alpha2 = ko*sqrt((n1.^2)*(sin(theta2).^2)-(n2.^2));
alpha3 = ko*sqrt((n1.^2)*(sin(theta3).^2)-(n2.^2));
alpha4 = ko*sqrt((n1.^2)*(sin(theta4).^2)-(n2.^2));
% Decay Equation
s = exp(-(alpha*z));
s1 = exp(-(alpha1*z));
s2 = exp(-(alpha2*z));
s3 = exp(-(alpha3*z));
s4 = exp(-(alpha4*z));
plot(z,s,'r')
hold on
plot(z,s1,'b')
hold on
plot(z,s2,'g')
hold on
plot(z,s3)
hold on 
plot(z,s4,'y')
title('Electric Field Decay');
xlabel('z');
ylabel('Exponential Attenuation');
