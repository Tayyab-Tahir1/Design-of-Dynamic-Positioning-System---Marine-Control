% Load the data from the first .mat file (file.mat)
load('eta.mat', 'Track'); 
data1 = Track;  % Store the loaded data into data1

% Load the data from the second .mat file (desired.mat)
%load('eta_hat.mat', 'eta_hat'); 
% data2 = eta_hat;  % Store the loaded data into data2
load('desiredd.mat', 'Reff'); 
data2 = Reff;

% Extract time and eta1, eta2, eta3 from the first timeseries object (data1)
time = data1.Time;   % Extract time from data1
eta1 = data1.Data(:, 1);  % First column (eta1)
eta2 = data1.Data(:, 2);  % Second column (eta2)
eta3 = data1.Data(:, 3);  % Third column (eta3)

% Extract eta1r, eta2r, eta3r from the second timeseries object (data2)
eta1r = data2.Data(:, 1);  % First column (eta1 reference)
eta2r = data2.Data(:, 2);  % Second column (eta2 reference)
eta3r = data2.Data(:, 3);  % Third column (eta3 reference)

% Create a figure
figure;
plot(time, eta1, 'b', time, eta1r, 'r--');
xlabel('Time');
ylabel('North(m)');
title('Time vs North');
legend('Trajectory', 'Ref');
grid on;
% ylim([-1,1]);

% Subplot 2: Time vs Eta2
figure;
plot(time, eta2, 'b', time, eta2r, 'r--');
xlabel('Time');
ylabel('East(m)');
title('Time vs East');
legend('Trajectory', 'Ref');
grid on;
% ylim([-1,1]);

%Subplot 3: Time vs Eta3
figure;
plot(time, eta3, 'b', time, eta3r, 'r--');
xlabel('Time');
ylabel('Heading(rad)');
title('Time vs Heading');
legend('Trajectory', 'Ref');
grid on;

% Subplot 4: North vs East
figure;
plot(eta1, eta2, 'b',eta1r, eta2r, 'r');
xlabel('North (m)');
ylabel('East (m)');
title('North vs East(m)');
legend('Trajectory', 'Ref');
grid on;


