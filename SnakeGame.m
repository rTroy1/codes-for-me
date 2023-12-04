% SnakeGame.m
function SnakeGame()
    % Main game script

    global keyPressed;

    % Set up initial parameters
    gridSize = 30;
    snakeLength = 3;

    % Initialize game variables
    snake = initializeSnake(snakeLength);
    food = generateFood(snake, gridSize);

    % Create figure and set up axes
    fig = figure('KeyPressFcn', @(src, event) keyPress(src, event), 'Name', 'Snake Game', 'NumberTitle', 'off');
    axes('XLim', [1 gridSize], 'YLim', [1 gridSize], 'XTick', [], 'YTick', [], 'Color', 'blue');

    % Set initial direction
    direction = [0, 1];  % Initial direction is to the right

    % Main game loop
    while ishandle(fig)
        % Check for key presses
        key = get(fig, 'CurrentKey');
        direction = getDirection(key);

        % Update snake position
        snake = moveSnake(snake, direction);

        % Check for collision
        if checkCollision(snake, gridSize)
            gameOver();
            return;
        end

        % Check if food is eaten
        if isFoodEaten(snake, food)
            snake = growSnake(snake, direction);
            food = generateFood(snake, gridSize);
            score = length(snake);
            fprintf('Score: %d\n', score);
        end

        % Plot snake and food
        cla; % Clear axes
        hold on;
        plot(snake(:, 2), snake(:, 1), 'g', 'LineWidth', 4); % Plot snake
        plot(food(2), food(1), 'r.', 'MarkerSize', 20); % Plot food
        hold off;
        drawnow;

        % Pause to control the speed of the game
        pause   (0.3);
    end
end

