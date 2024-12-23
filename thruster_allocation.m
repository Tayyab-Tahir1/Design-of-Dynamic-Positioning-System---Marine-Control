% Load the data
load("thruster_set_point.mat", "thrusterset");

% Extract time and thruster data
time = thrusterset.Time;           % Extract time from thrusterset
datath = squeeze(thrusterset.Data); % Extract thruster data and reshape if necessary

% Ensure there are at least 5000 time steps
if length(time) < 30
    error('The dataset must contain at least 5000 time steps.');
end

% Separate each thruster's data series and take the absolute values
thr1_abs = abs(datath(1, :)');  % Absolute values of the first thruster data
thr2_abs = abs(datath(2, :)');  % Absolute values of the second thruster data
thr3_abs = abs(datath(3, :)');  % Absolute values of the third thruster data
thr4_abs = abs(datath(4, :)');  % Absolute values of the fourth thruster data
thr5_abs = abs(datath(5, :)');  % Absolute values of the fifth thruster data

% Number of time steps to analyze
num_time_steps = 300;

% Sum the absolute values of thrusts across all thrusters for the specified time steps
total_thrust = thr1_abs(1:num_time_steps) + thr2_abs(1:num_time_steps) + thr3_abs(1:num_time_steps) + thr4_abs(1:num_time_steps) + thr5_abs(1:num_time_steps);

% Define the maximum available thrust for each thruster
max_thruster_thrust = 1000 * 10^3; % 1,000,000 N

% Calculate the percentage for each of the specified time steps
thr_percentage = (total_thrust / max_thruster_thrust) * 100;

% Average thrust percentage over the specified time steps
thr_percentageAVG = mean(thr_percentage);

% Display the average operational percentage
fprintf('Average Thruster Operational Percentage over %d time steps: %.2f%%\n', num_time_steps, thr_percentageAVG);
