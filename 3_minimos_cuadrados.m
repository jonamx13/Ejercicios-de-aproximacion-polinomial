% 3_minimos_cuadrados.m
% Mínimos cuadrados con gráfica de ajuste.

% Datos
X = [8, 2, 11, 6, 5, 4, 12, 9, 6, 1];
Y = [3, 10, 3, 6, 8, 12, 1, 4, 9, 14];

% Cálculos
n = length(X);
sum_x = sum(X);
sum_y = sum(Y);
sum_xy = sum(X .* Y);
sum_x2 = sum(X.^2);
sum_y2 = sum(Y.^2);

a = (n * sum_xy - sum_x * sum_y) / (n * sum_x2 - sum_x^2);
b = (sum_y - a * sum_x) / n;

numerator = n * sum_xy - sum_x * sum_y;
denominator = sqrt((n * sum_x2 - sum_x^2) * (n * sum_y2 - sum_y^2));
r = numerator / denominator;

% Gráfica
x_fit = linspace(min(X), max(X), 100);
y_fit = a * x_fit + b;

figure;
plot(X, Y, 'ko', 'MarkerSize', 10, 'LineWidth', 2, 'DisplayName', 'Datos');
hold on;
plot(x_fit, y_fit, 'r-', 'LineWidth', 2, 'DisplayName', sprintf('Ajuste: y = %.4fx + %.4f', a, b));
xlabel('x');
ylabel('y');
title('Ajuste por Mínimos Cuadrados');
legend('Location', 'northeast');
grid on;
hold off;

% Resultados
disp("Recta de mínimos cuadrados:"), disp([a, b]);
disp("Factor de correlación:"), disp(r);
