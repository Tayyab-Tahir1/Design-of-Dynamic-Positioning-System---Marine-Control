% Load the data from the first .mat file (file.mat)
load('thruster_dynamics_force.mat', 'thruter'); 


% Extract time and eta1, eta2, eta3 from the first timeseries object (data1)
time = thruter.Time;   % Extract time from data1
eta1 = current.Data(:, 1);  % First column (eta1)
eta2 = current.Data(:, 2);  % Second column (eta2)


% Subplot 4: North vs East
figure;
plot(time,eta1, 'b', time, eta2, 'r');
xlabel('North');
ylabel('East');
title('Current Direction ');
legend('North  current ' ,'East Current');
grid on;