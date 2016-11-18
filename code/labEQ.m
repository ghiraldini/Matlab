v = 1.7;
r = 10000;
c = 51e-12;
q = 4.4e-11;
f = ((v./r)./(c+q)).*.15;
Am = 0:.5:2.5;
kf = 1000;
df = Am*kf;
plot(df,Am)
title('Linearity of Modulation');
xlabel('Frequency Deviation');
ylabel('Modulating Signal Amplitude');