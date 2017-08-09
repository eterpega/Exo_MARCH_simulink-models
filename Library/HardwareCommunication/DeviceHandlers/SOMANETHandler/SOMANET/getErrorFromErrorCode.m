function [somanetError] = getErrorFromErrorCode(errorCode)
%GETERRORFROMERRORCODE Gets the corresponding error enum from a given errorCode
% definition of these constants are in
% somanet-ethercat-drive/module-ethercat-drive/include/cia402_error_codes.h
% assignment is done in module-ethercat-drive/src/ethercat_drive_service.xc
% around line 49-97 in function get_cia402_error_code
switch(errorCode)
    case hex2dec('3210')
        somanetError = SomanetError.SOMANET_UNDERVOLTAGE;
    case hex2dec('3220')
        somanetError = SomanetError.SOMANET_OVERVOLTAGE;
    case hex2dec('3131')
        somanetError = SomanetError.PHASE_OVERCURRENT;
        % 3132 and 3133 are never used
    case hex2dec('4210')
        somanetError = SomanetError.SOMANET_DETECT_OVERHEAT;
    case hex2dec('7300')
        somanetError = SomanetError.SOMANET_SENSOR_ERROR;
        % motor commutation error also never used
    case hex2dec('7121')
        somanetError = SomanetError.SOMANET_DETECT_MOTORBLOCKED;
    case hex2dec('8A00')
        somanetError = SomanetError.GENERICERROR_SOMANET;
        % march specific errors;
    case hex2dec('8B01')
        somanetError = SomanetError.TARGET_POSITION_OUT_OF_BOUNDS;
    case hex2dec('8B02')
        somanetError = SomanetError.TARGET_POSITION_OUT_OF_BOUNDS;
    case hex2dec('8B03')
        somanetError = SomanetError.SOFTWARE_HARDSTOP_REACHED;
    case hex2dec('8B04')
        somanetError = SomanetError.SOFTWARE_SOFTSTOP_REACHED;
    case 0 % then ethercat isnt working yet
        somanetError = SomanetError.SOMANET_DISCONNECTED;
    case 72 % this means no error
        somanetError = SomanetError.NOERROR_SOMANET;
    otherwise
        somanetError = SomanetError.SOMANET_UNKNOWN_ERROR;
end
end