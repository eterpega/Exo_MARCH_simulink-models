% robot dimensions
par.torso_width = 111.490833/1000;
par.pelvis_width = 135.213424/1000;
par.pelvis_depth = 207.340833/1000;
par.upper_length = 467.447184/1000;
par.lower_length = 567.470264/1000;

% trajectory settings
par.foot_height = 0.05; %maximum height of swing foot above the ground
tol = 1e-3; %prevent singularities
par.leg_length = par.upper_length+par.lower_length-tol; %total leg length

% joint limits
par.joint_limit_min = [-20 -109 -3 -23 -109 -3]/180*pi;
par.joint_limit_max = [23 21 121 20 21 121]/180*pi;