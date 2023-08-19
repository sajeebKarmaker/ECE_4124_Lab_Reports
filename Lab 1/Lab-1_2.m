% Discrete time indices
clc
n = -10:10;

% Discrete signal (example: sine wave)
discrete_signal = sin(0.2 * pi * n);

% Plotting
stem(n, discrete_signal);
title('Discrete Signal');
xlabel('n');
ylabel('Amplitude');
