function eaten = isFoodEaten(snake, food)
    head = snake(1, :);
    eaten = isequal(head, food);
end