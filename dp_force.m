% Load the data from the .mat file
load('dp_force.mat', 'dp'); 

% Assuming dp is your timeseries object
time = dp.Time;             % Extract time values
data = squeeze(dp.Data);     % Remove singleton dimensions from data

% Plot each data dimension
figure;
plot(time, data(1, :), 'r');  % Plot first dimension in red
hold on;
plot(time, data(2, :), 'g');  % Plot second dimension in green
plot(time, data(3, :), 'b');  % Plot third dimension in blue
grid on;
hold off;

% Add labels and legend
xlabel('Time (s)');
ylabel('Force(N)');
legend('North', 'East', 'Yaw');
title('Forces by DP Controller ');  