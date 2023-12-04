% drawSnake.m
function drawSnake(snake)
    % Function to draw the snake on a grid
    cla; % Clear axes
    hold on;
    plot(snake(:, 2), snake(:, 1), 'g', 'LineWidth', 4); % Plot snake
    hold off;
    drawnow;
end
