function stopModel = shouldStopModel(isShuttingDown, curTime, shutdownDelay)
%SHOULDSTOPSIMULATION Determines whether to stop model
persistent startShutdownTime;
if(isempty(startShutdownTime))
    startShutdownTime = 0;
end
if(~isShuttingDown)
    startShutdownTime = curTime;
end
stopModel = curTime - startShutdownTime > shutdownDelay;
end