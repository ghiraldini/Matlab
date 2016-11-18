% AM with Phase Shift
% Time Interval and Increment
t = -1:.01:1;
% Frequency Carrier
Fc = 5;
% Frequency Modulated
Fm = 1;
% Phase shift phi (0,45,90,135)
Q = 0;
Q1 = .7853;
Q2 = 1.57;
Q3 = 2.356;
% Amplitudes of Signals
Ac = 1;
Mu = .5;
% Define Function
y = [Ac + Mu*cos(2*pi*Fm*t)].*cos(2*pi*Fc*t + Q);
y1 = [Ac + Mu*cos(2*pi*Fm*t)].*cos(2*pi*Fc*t + Q1);
y2 = [Ac + Mu*cos(2*pi*Fm*t)].*cos(2*pi*Fc*t + Q2);
y3 = [Ac + Mu*cos(2*pi*Fm*t)].*cos(2*pi*Fc*t + Q3);
fft(y);

% Plot Function
plot(t,y)
hold on 
plot(t,y1,'r')
hold on 
plot(t,y2,'y')
hold on 
plot(t,y3,'g')
title('AM with Phase Shifts')
xlabel('Time')
ylabel('Amplitude')