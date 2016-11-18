n1 = 1.48;
n2 = 1.465;
% theta = 85
theta = 1.4835;
%theta = 1.307;
p = (-n2.^2.*cos(theta) + n1.*(sqrt(n2.^2-n1.^2.*sin(theta).^2)))./(n2.^2.*cos(theta) + n1.*sqrt(n2.^2-n1.^2.*sin(theta).^2));
R = p.^2
    