function [ somanetState ] = getSomanetState( statusword )
%GETSOMANETSTATE computes somanetState from given statusword
% see
% https://doc.synapticon.com/tutorials/v3.0.0-beta/CiA402_statemachine/index.html
% for specification.
left=bitget(statusword, [7 6]);
right=bitget(statusword, fliplr(1:4)); % fliplr since we'll get them in order 1-4 while we want 4-1
if(left(1) == 0 && all(right == [0 0 0 0]))
    somanetState = SomanetState.NOT_READY_TO_SWITCH_ON;
elseif(left(1) == 1 && all(right == [0 0 0 0]))
    somanetState = SomanetState.SWITCH_ON_DISABLED;
elseif(all(left == [0 1]) && all(right == [0 0 0 1]))
    somanetState = SomanetState.READY_TO_SWITCH_ON;
elseif(all(left == [0 1]) && all(right == [0 0 1 1]))
    somanetState = SomanetState.SWITCHED_ON;
elseif(all(left == [0 1]) && all(right == [0 1 1 1]))
    somanetState = SomanetState.OPERATION_ENABLED;
elseif(all(left == [0 0]) && all(right == [0 1 1 1]))
    somanetState = SomanetState.QUICK_STOP_ACTIVE;
elseif(left(1) == 0 && all(right == [1 1 1 1]))
    somanetState = SomanetState.FAULT_REACTION_ACTIVE;
elseif(left(1) == 0 && all(right == [1 0 0 0]))
    somanetState = SomanetState.FAULT;
else
    somanetState = SomanetState.UNKNOWN_STATUSWORD;
end

