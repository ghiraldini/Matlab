% Refractive Index 1
n1 = 1.48;
% Refractive Index 2
n2 = 1.46;
% Incident Angle (85deg = 1.48353rad, etc)
theta = 1.4039:1e-6:1.57079;
% factor of equation 4.11
q = (n1*cos(theta)).^-1;
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
y1 = y + .4.*z;
% (d/lambda)2
y2 = y1 + .4.*z;
% (d/lambda)3
y3 = y2 + .4.*z;
% (d/lambda)4
y4 = y3 + .4.*z;
% (d/lambda)5
y5 = y4 + .4.*z;
% Plot
plot(y,Ne)
hold on 
plot(y1,Ne,'r')
hold on 
plot(y2,Ne,'g')
hold on 
plot(y3,Ne,'m')
hold on 
plot(y4,Ne,'c')
hold on 
plot (y5,Ne,'k')
title('Mode Chart');
xlabel('d/lambda');
ylabel('Propogation Angle (radians)');
ylim([1.4601 1.47901]);
xlim([0 5]);