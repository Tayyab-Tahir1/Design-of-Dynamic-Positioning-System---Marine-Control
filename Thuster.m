% Load the data from the .mat file
load('thruster_set_point.mat', 'thrusterset'); 

% Assuming dp is your timeseries object
time = thrusterset.Time;             % Extract time values
datta = squeeze(thrusterset.Data);     % Remove singleton dimensions from data

% Plot each data dimension
figure;
plot(time, datta(1, :), 'r');  % Plot first dimension in red
hold on;
plot(time, datta(2, :), 'g');  % Plot second dimension in green
plot(time, datta(3, :), 'b');  % Plot third dimension in blue
plot(time, datta(4, :), 'k');  % Plot first dimension in red
plot(time, datta(5, :), 'm');  % Plot second dimension in green

grid on;
hold off;

% Add labels and legend
xlabel('Time (s)');
ylabel('Force(N)');
legend('T1', 'T2', 'T3','T4','T5');
title('Thruster forces ');  