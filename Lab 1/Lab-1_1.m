% Time vector
t = -5:0.01:5;

% Unit Step Signal
unit_step = (t >= 0);

% Unit Ramp Signal
unit_ramp = t .* unit_step;

% Unit Impulse Signal
unit_impulse = (t == 0);

% Plotting
subplot(3,1,1);
plot(t, unit_step);
title('Unit Step Signal');

subplot(3,1,2);
plot(t, unit_ramp);
title('Unit Ramp Signal');

subplot(3,1,3);
stem(t, unit_impulse);
title('Unit Impulse Signal');
