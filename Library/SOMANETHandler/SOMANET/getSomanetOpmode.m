function [ somanetOpmode ] = getSomanetOpmode( rawOpmode )
%GETSOMANETOPMODE Converts raw opmode to enum opmode
switch(rawOpmode)
    case 0
        somanetOpmode = SomanetOpmode.NO_OPMODE;
    case 8
        somanetOpmode = SomanetOpmode.CSPOSITION;
    case 9
        somanetOpmode = SomanetOpmode.CSVELOCITY;
    case 10
        somanetOpmode = SomanetOpmode.CSTORQUE;
    case 128
        somanetOpmode = SomanetOpmode.TUNING;
    case -128
        somanetOpmode = SomanetOpmode.TUNING;
    otherwise
        somanetOpmode = SomanetOpmode.UNKNOWN_OPMODE;
end
end

