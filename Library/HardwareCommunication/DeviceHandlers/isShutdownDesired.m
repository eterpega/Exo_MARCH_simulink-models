function shutdownDesired = isShutdownDesired(buttonPressedPDB, curTime, minimumDuration)
%ISSHUTDOWNDESIRED Decides if button was pressed long enough to want a shutdown
persistent timeWhenPressed;
if(isempty(timeWhenPressed))
    timeWhenPressed = 0;
end

if(~buttonPressedPDB)
    timeWhenPressed = curTime;
end

shutdownDesired = curTime - timeWhenPressed > minimumDuration;
end