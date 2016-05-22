function newState = fcn(initialState, previousState)

states = [1 2 4 8];

if(initialState ~= 8)
    for i = states
        newState = i
        pause(3);
    end
else
    newState = initialState;
end