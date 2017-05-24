%% Script to reset all the constants managed by sliders in SomanetTuning
% Note: to 'hook' this script to the model, we used this command:
% set_param('SomanetTuning','PostCodeGenCommand','SomanetTuning_make_rtw_hook')
% should not have to be repeated, but for future reference

disp('MARCH S&C: Resetting slider constants');
setConstant('position_p_gui'        , 20000);
setConstant('position_i_gui'        , 0);
setConstant('position_d_gui'        , 90000);
setConstant('velocity_p_gui'        , 700000);
setConstant('velocity_i_gui'        , 20000);
setConstant('velocity_d_gui'        , 0);
setConstant('min_position_slider'   , -500000000);
setConstant('max_position_slider'   , 500000000);
setConstant('max_torque_slider'     , 2122);
setConstant('angle_offset_slider'   , 900);
%setConstant('changemeplease'        , 72);