% Load the data from the .mat file
load('thruster_dynamics_force.mat', 'thruter'); 

% Assuming dp is your timeseries object
time = thruter.Time;             % Extract time values
datta = squeeze(thruter.Data);     % Remove singleton dimensions from data

% Plot each data dimension
figure;
plot(time, datta( :,1), 'r');  % Plot first dimension in red
hold on;
plot(time, datta(:,2), 'g');  % Plot second dimension in green
plot(time, datta(:,3), 'b');  % Plot third dimension in blue
plot(time, datta(:,4), 'k');  % Plot first dimension in red
plot(time, datta(:,5), 'm');  % Plot second dimension in green
plot(time, datta(:,6), 'c');  % Plot second dimension in green
grid on;

% Add labels and legend
xlabel('Time (s)');
ylabel('Forces(N)');
legend('T1', 'T2', 'T3','T4','T5', 'T6');
title('Thruster Dynamics');  