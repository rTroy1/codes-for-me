% checkCollision.m
function collision = checkCollision(snake, gridSize)
    head = snake(1, :);
    collision = head(1) < 1 || head(1) > gridSize || head(2) < 1 || head(2) > gridSize || any(isequal(head, snake(2:end, :)));
end

