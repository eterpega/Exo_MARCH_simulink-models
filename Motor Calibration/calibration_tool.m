mdl = 'calibration_model_v2';
open_system(mdl);

get_param(mdl,'SaveTime')
get_param(mdl,'SaveOutput')
get_param(mdl,'RL32LogTETModifier')

get_param(mdl,'RL32LogBufSizeModifier')

rtwbuild(mdl);
tg = slrt;
tg.stoptime = 10;
start(tg);

pause(11);

stop(tg);

timelog = tg.TimeLog;
outputLog = tg.OutputLog;

filename = input('Filename?','s');

csvwrite([filename '.csv'],outputLog');

plot(timelog,outputLog)