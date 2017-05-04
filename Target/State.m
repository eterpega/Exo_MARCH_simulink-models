classdef State < Simulink.IntEnumType
  enumeration
    startup(1)
    tuning(2)
    sync(3)
    fault(4)
    pending(5)
    end
end 