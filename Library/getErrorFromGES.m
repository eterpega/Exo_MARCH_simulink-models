function [ gesError ] = getErrorFromGES(buttonState, imuState, tempSensor1State, tempSensor2State, gesType)
%GETERRORFROMGES From given ethercat data, determines the GES error
% using the sent sensor states (see
% https://confluence.projectmarch.nl:8443/pages/viewpage.action?pageId=9440008)

% all GES should have a working tempSensor1
switch(tempSensor1State)
    case SensorState.NO_SENSOR_PRESENT
        gesError = GESError.GES_TEMP1SENSOR_NOT_PRESENT;
    case SensorState.SENSOR_DISCONNECTED
        gesError = GESError.GES_TEMP1SENSOR_DISCONNECT;
    otherwise
        switch(gesType)
            case GES.RIGHT_GES
                % that's all for the right ges, for the other two we need to check more
                gesError = GESError.GES_NO_ERROR;
            case GES.LEFT_GES                
                % left ges has the secondary button
                switch(buttonState)
                    case SensorState.NO_SENSOR_PRESENT
                        gesError = GESError.GES_BUTTON_NOT_PRESENT;
                    case SensorState.SENSOR_DISCONNECTED
                        gesError = GESError.GES_BUTTON_DISCONNECT;
                    otherwise
                        gesError = GESError.GES_NO_ERROR;
                end
            case GES.BACK_GES
                % back ges has an imu and a temp sensor
                switch(tempSensor2State)
                    case SensorState.NO_SENSOR_PRESENT
                        gesError = GESError.GES_TEMP2SENSOR_NOT_PRESENT;
                    case SensorState.SENSOR_DISCONNECTED
                        gesError = GESError.GES_TEMP2SENSOR_DISCONNECT;
                    otherwise
                        % imu is just for datalogging so far, so least
                        % priority
                        switch(imuState)
                            case SensorState.NO_SENSOR_PRESENT
                                gesError = GESError.GES_IMU_NOT_PRESENT;
                            case SensorState.SENSOR_DISCONNECTED
                                gesError = GESError.GES_IMU_DISCONNECT;
                            otherwise
                                gesError = GESError.GES_NO_ERROR;
                        end
                end
        end
end

end