% Compute and Plot the photon energy for wavelength 1260 - 1675 nm

% Plank's Constant (J/K)
h = 6.626e-34;

% Electron Volt (eV)
e = 1.6e-19;

% Speed of light (m/s)
c = 3e8;

% Wavelength (m)
lambda = 1250e-9:1e-9:1685e-9;

% Energy of Wavelength (eV)
W = (h.*(c./lambda))./e;

plot(lambda,W);
title('Energy of Wavelength');
xlabel('Wavelength (m)');
ylabel('Energy (eV)');


