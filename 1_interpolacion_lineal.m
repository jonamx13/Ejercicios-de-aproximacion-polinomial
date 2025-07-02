% 1_interpolacion_lineal.m
% Interpolación lineal con gráfica comparativa.

% Datos
x_data = [8, 9, 11, 12];
y_data = [0.9030900, 0.9542425, 1.0413927, 1.0791812];
x_target = 10;
y_true = 1.0;

% Interpolación (a)
x0_a = 8; y0_a = 0.9030900;
x1_a = 12; y1_a = 1.0791812;
y_linear_a = y0_a + (y1_a - y0_a) / (x1_a - x0_a) * (x_target - x0_a);
error_a = abs((y_true - y_linear_a) / y_true) * 100;

% Interpolación (b)
x0_b = 9; y0_b = 0.9542425;
x1_b = 11; y1_b = 1.0413927;
y_linear_b = y0_b + (y1_b - y0_b) / (x1_b - x0_b) * (x_target - x0_b);
error_b = abs((y_true - y_linear_b) / y_true) * 100;

% Gráfica
figure;
plot(x_data, y_data, 'ko', 'MarkerSize', 10, 'LineWidth', 2, 'DisplayName', 'Datos conocidos');
hold on;
plot(x_target, y_linear_a, 'rs', 'MarkerSize', 12, 'LineWidth', 2, 'DisplayName', 'Interpolación (a)');
plot(x_target, y_linear_b, 'bd', 'MarkerSize', 12, 'LineWidth', 2, 'DisplayName', 'Interpolación (b)');
plot(x_target, y_true, 'g*', 'MarkerSize', 15, 'LineWidth', 2, 'DisplayName', 'Valor verdadero');
xlabel('x');
ylabel('log(x)');
title('Interpolación Lineal de log(10)');
legend('Location', 'northwest');
grid on;
hold off;

% Resultados
disp("Interpolación lineal (a):"), disp(y_linear_a);
disp("Error relativo % (a):"), disp(error_a);
disp("Interpolación lineal (b):"), disp(y_linear_b);
disp("Error relativo % (b):"), disp(error_b);
