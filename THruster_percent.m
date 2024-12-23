% Thruster percentage values
thruster_percentages = [
    36.6961, 38.3093, 39.2202, 46.5678, 53.8543, 63.6497, 73.6643, 74.2493, 87.1619, 75.5699, ...
    66.2992, 59.4346, 65.0109, 64.4908, 48.5795, 46.0356, 36.7376, 33.1528, 31.1296, 31.0524, ...
    28.7790, 30.4403, 32.6528, 48.3794, 40.3272, 51.8440, 49.5699, 76.6798, 59.6441, 65.1277, ...
    52.2124, 35.5977, 47.8035, 54.5980, 74.5095, 63.9897, 58.0256, 56.2666
];

% Define angles for each entry (0 to 360 degrees in equal segments)
angles = linspace(0, 360, length(thruster_percentages) + 1); % +1 to close the loop
thruster_percentages = [thruster_percentages, thruster_percentages(1)]; % Close the loop

% Interpolate for smoother curve
fine_angles = linspace(0, 360, 500); % Increase resolution for smoother curve
fine_thruster_percentages = interp1(angles, thruster_percentages, fine_angles, 'pchip'); % Interpolate with pchip for smooth curve

% Convert to radians for polar plot
fine_angles_rad = deg2rad(fine_angles);
original_angles_rad = deg2rad(angles); % Convert original angles to radians

% Create figure with polar axes
figure;
polar_ax = polaraxes;
title('Thruster Utilization (%)');

% Set 0 degrees at the top and rotate clockwise
polar_ax.ThetaZeroLocation = 'top';
polar_ax.ThetaDir = 'clockwise';

% Plot the smoothed thruster percentage values on the polar plot
p = polarplot(fine_angles_rad, fine_thruster_percentages, 'b-', 'LineWidth', 2);
p.Color = 'b'; % Set color to blue

% Add circular markers at the original data points
hold on;
polarplot(original_angles_rad, thruster_percentages, 'bo', 'MarkerSize', 5, 'MarkerFaceColor', 'w');
hold off;

% Set radial limits and tick marks for percentages
rlim([0 100]); % Set radial limits to 0-100%
rticks(0:10:100); % Set radial ticks from 0 to 100 in steps of 10
thetaticks(0:30:330); % Set angular ticks every 30 degrees

% Add legend
legend('Thruster utilization (%)', 'Original data points', 'Location', 'southoutside');
