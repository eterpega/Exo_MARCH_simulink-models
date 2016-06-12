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

csvwrite([filename '_encoder.csv'],outputLog(:,1)');
csvwrite([filename '_pwm.csv'],outputLog(:,2)');

plot(timelog,outputLog)