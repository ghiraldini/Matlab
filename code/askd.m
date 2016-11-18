function askd(g,f)
% ASK Modulation
t = 0:2*pi/99:2*pi;
cp = []; % Initialize all arrays
sp = [];
mod = [];
bit = [];
for n = 1:length(g); % Loop bit string
    if g(n) == 0;
        die = zeros(1,100); % Flat line if '0'
        se = zeros(1,100);
    else g(n) == 1;
        die = 2*ones(1,100); % Sine wave if '1'
        se = ones(1,100);
    end
    c = sin(f*t); % Carrier
    cp = [cp die]; % 
    mod = [mod c];
    bit = [bit se];
end
ask = cp.*mod; % ASK
subplot(2,2,1); % Plot Random Binary Stream
plot(bit,'LineWidth',1.5);
grid on;
title('Binary Signal');
axis([0 100*length(g) -2.5 2.5]);

subplot(2,1,2); % Plot ASK
plot(ask,'LineWidth',1.5);
grid on;
title('ASK modulation');
axis([0 100*length(g) -2.5 2.5]);

Hs = spectrum.periodogram; % Plot Power Spectra
subplot(2,2,2);psd(Hs,ask,'fs',f);
ylim([-50 20]);