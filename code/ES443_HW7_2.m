n1 = 1.5;
a = 50e-6;
alpha = 2;
alpha1 = 10;
delta = 1e-2;
delta1 = 1e-3;
r = 0:1e-6:49.999e-6;
n = n1*(sqrt(1 - 2*(r./a).^alpha.*delta));
n1 = n1*(sqrt(1 - 2*(r./a).^alpha1.*delta));
n2 = n1.*(sqrt(1 - 2.*(r./a).^alpha.*delta1));
plot(r,n)
hold on
plot(r,n1,'r')
hold on
plot(r,n2,'g')
title('Graded Index Fiber Within Core');
xlabel('Radius');
ylabel('Graded Index');