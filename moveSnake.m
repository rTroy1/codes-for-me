% moveSnake.m
function snake = moveSnake(oldSnake, dir)
    % Move the snake in the specified direction
    head = oldSnake(1, :);
    newHead = head + dir;
    snake = [newHead; oldSnake(1:end-1, :)];
end
