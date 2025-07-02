% 2_interpolacion_lagrange.m
% Interpolación de Lagrange con gráfica.

% Datos
X = [8, 9, 11, 12];
Y = [0.9030900, 0.9542425, 1.0413927, 1.0791812];
x_target = 10;
y_true = 1.0;

% Interpolación
n = length(X);
P = 0;
for i = 1:n
    L = 1;
    for j = 1:n
        if j != i
            L *= (x_target - X(j)) / (X(i) - X(j));
        end
    end
    P += Y(i) * L;
end
error = abs((y_true - P) / y_true) * 100;

% Gráfica
x_plot = linspace(min(X), max(X), 100);
y_plot = zeros(size(x_plot));
for k = 1:length(x_plot)
    p = 0;
    for i = 1:n
        L = 1;
        for j = 1:n
            if j != i
                L *= (x_plot(k) - X(j)) / (X(i) - X(j));
            end
        end
        p += Y(i) * L;
    end
    y_plot(k) = p;
end

figure;
plot(X, Y, 'ko', 'MarkerSize', 10, 'LineWidth', 2, 'DisplayName', 'Datos conocidos');
hold on;
plot(x_plot, y_plot, 'r-', 'LineWidth', 2, 'DisplayName', 'Polinomio Lagrange');
plot(x_target, P, 'bs', 'MarkerSize', 12, 'LineWidth', 2, 'DisplayName', 'log(10) estimado');
plot(x_target, y_true, 'g*', 'MarkerSize', 15, 'LineWidth', 2, 'DisplayName', 'Valor verdadero');
xlabel('x');
ylabel('log(x)');
title('Interpolación de Lagrange (3er orden)');
legend('Location', 'northwest');
grid on;
hold off;

% Resultados
disp("Interpolación de Lagrange:"), disp(P);
disp("Error relativo %:"), disp(sprintf('%.6f', error));  % ¡Cambio aquí!
