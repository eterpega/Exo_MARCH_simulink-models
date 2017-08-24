function setPropertiesModel(name)
load_system(name);
set_param(name,'SolverType','Fixed-step');
set_param(name,'StopTime','inf');
set_param(name,'Solver','ode4');
set_param(name,'FixedStep','0.002');

set_param(name,'SimulationMode','External');
%set_param(name,'SystemTargetFile','slrt.tc');
end