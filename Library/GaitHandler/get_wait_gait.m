function waitGait = get_wait_gait(angleWait, modelFrequency, waitTime)
%MATLAB things now the vector legnth is variable thus we give it a fixed
%size
%% waitSamples = modelFrequency * waitTime;
waitGait = repmat(angleWait,1,waitSamples);
end
