% initializeSnake.m
function snake = initializeSnake(length)
    % Initialize the snake at the center of the grid
    startX = floor(30 / 2);
    startY = floor(30 / 2);
    snake = [startX, startY];
    for i = 2:length
        snake = [snake; startX, startY - i + 1];
    end
end

