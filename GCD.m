x0 = [0; 0];  
tspan = [0 0.01];  

[t, x] = ode45(@CD, tspan, x0);

figure(1)
plot(t,x);

figure('Position', [50, 50, 600, 500]);

subplot(2,1,1);
plot(t, x(:,1), 'g', 'LineWidth', 2.0);
xlabel('Tiempo (s)');
ylabel('Corriente i_L (A)');
title('Corriente en el inductor');
grid on;

subplot(2,1,2);
plot(t, x(:,2), 'r', 'LineWidth', 2.0);
xlabel('Tiempo (s)');
ylabel('Voltaje V_C (V)');
title('Voltaje en el capacitor');
grid on;