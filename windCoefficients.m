%α Cx Cy Cz Cϕ Cθ Cψ

load('wind_coeff')
alpha = wind_coeff(:,1)*pi/180;
Cx = wind_coeff(:,2);
Cy = wind_coeff(:,3);
Cz = wind_coeff(:,4);
C_roll = wind_coeff(:,5);
C_pitch = wind_coeff(:,6);
C_yaw = wind_coeff(:,7);

figure
subplot(321)
plot(alpha*180/pi,Cx);
xlim([0 360])
xlabel('\alpha')
ylabel('Cx');
subplot(322)
plot(alpha*180/pi,Cy);
xlabel('\alpha')
ylabel('Cy');
xlim([0 360])
subplot(323)
plot(alpha*180/pi,Cz);
xlim([0 360])
xlabel('\alpha')
ylabel('Cz');
subplot(324)
plot(alpha*180/pi,C_roll);
xlim([0 360])
xlabel('\alpha')
ylabel('C_\phi');
subplot(325)
plot(alpha*180/pi,C_pitch);
xlim([0 360])
xlabel('\alpha')
ylabel('C_\theta');
subplot(326)
plot(alpha*180/pi,C_yaw);
xlim([0 360])
xlabel('\alpha')
ylabel('C_\psi');
