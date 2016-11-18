% circle
%r = 1;
theta = linspace(0, 2.* pi ,100);
x = r .* cos(theta);
y = r .* sin(theta);
plot(x,y);
axis('equal');