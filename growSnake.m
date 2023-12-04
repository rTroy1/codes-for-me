% growSnake.m
function newSnake = growSnake(snake, direction)
    tail = snake(end, :);
    newSegment = tail + direction;
    newSnake = [snake; newSegment];
end
