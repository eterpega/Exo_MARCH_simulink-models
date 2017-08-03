classdef SensorState < Simulink.IntEnumType
   enumeration
       SENSOR_INIT_NOT_STARTED(0)
       SENSOR_OPERATIONAL(1)
       NO_SENSOR_PRESENT(2)
       SENSOR_DISCONNECTED(3)
   end
end

