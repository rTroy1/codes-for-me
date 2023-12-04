function food = generateFood(snake, gridSize)
    while true
        food = randi([2, gridSize - 1], 1, 2);
        if ~ismember(food, snake, 'rows')%checks the generated coordinate is not a part of snake
            
            break;
        end
    end
end
