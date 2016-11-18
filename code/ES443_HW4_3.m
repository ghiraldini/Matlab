n1 = 1.48;
n2 = 1.465;
% theta = 85
theta = 1.4835;
c = 3e8;
lambda = 1.3e-6;
f = c/lambda;
w = 2*pi*f;
ko = w/c;
k = ko.*n1;
z = 0:1e-11:4e-6;
%t = 0:1e-8:10e-6;
t = 1;
% parallel polarization
p = (-n2.^2.*cos(theta) + n1.*(sqrt(n2.^2-n1.^2.*sin(theta).^2)))./(n2.^2.*cos(theta) + n1.*sqrt(n2.^2-n1.^2.*sin(theta).^2));
x = exp(j*74.6);
y = (-.187+j*.2456)./(.187+j*.2456);
q = (.309*exp(j*127.3))./(.309*exp(j*52.7));
alpha = ko*sqrt((n1.^2)*(sin(theta).^2)-(n2.^2))
%s = exp(-(alpha*z));
%E = s.*sin(w.*t - k.*z);
%plot(z,E)
%xlim([0 5]);