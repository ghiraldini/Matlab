n1 = 1.5;
%n2 = 1.485;
n2 = 1.49
theta_c = 1.429256853; % radians (80.89 degrees)
delta = .01;
theta_1 = .087; % radians (5 degrees)
x = 0:.1:1; % x = r/a
% Numerical Appeture
NA = n1*sqrt(2*delta)*sqrt(1-(x).^2);
% Index of Refraction
n_r = n1*(1-((x).^2)*delta);
plot(x,n_r)
%plot(x,NA,'r')
theta_2 = asin((n1/n2)*sin(theta_1));
deg = theta_2*180/pi