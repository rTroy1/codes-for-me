% getDirection.m
function direction = getDirection(key)
    % Get direction based on the key press
    switch key
        case 'uparrow'
            direction = [1, 0];
        case 'downarrow'
            direction = [-1, 0];
        case 'leftarrow'
            direction = [0, -1];
        case 'rightarrow'
            direction = [0, 1];
        otherwise
            direction = [0, 0]; % No change
    end
end
