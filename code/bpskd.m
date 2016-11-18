function bpskd(g,f)
% BPSK Modulation
t = 0:2*pi/99:2*pi;
cp = [];
sp = [];
mod = [];
bit = [];
for n = 1:length(g);
    if g(n) == 0;
        die = -ones(1,100);   
        se = zeros(1,100);    
    else g(n) == 1;
        die = ones(1,100);    
        se = ones(1,100);     
    end
    c = sin(f*t);
    cp = [cp die];
    mod = [mod c];
    bit = [bit se];
end
bpsk = cp.*mod;
subplot(2,2,1);
plot(bit,'LineWidth',1.5);
grid on;
title('Binary Signal');
axis([0 100*length(g) -2.5 2.5]);

subplot(2,1,2);
plot(bpsk,'LineWidth',1.5);
grid on;
title('ASK modulation');
axis([0 100*length(g) -2.5 2.5]);

Hs = spectrum.periodogram;
subplot(2,2,2);psd(Hs,bpsk,'fs',f);
ylim([-50 20]);