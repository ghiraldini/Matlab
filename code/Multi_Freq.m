% Multiple Frequency Components

% Fundamental Frequency
f = 1; % MHz

% Time Interval and Increment
t = 0:.01:5;

% Define Function
y1 = sin(2*pi*f*t) + 1/3*sin(2*pi*(3*f)*t) + 1/5*sin(2*pi*(5*f)*t);

% Plot Function
plot(t,y1)
title('Multiple Frequency Components')
xlabel('Time (s)')
ylabel('Amplitude')