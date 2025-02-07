tspan = [0:0.01:10];
y0 = zeros(12, 1);
[t, y] = ode45('odefunc', tspan, y0);

% plot
for col = 1:12
    subplot(3, 4, col);
    plot(t, y(:, col));
    title(['y ', num2str(col)]);
    xlabel('Time (t)');
    ylabel(['y_', num2str(col)]);
end
