function p = sine_set_point(p_0,t_0,t_current,p_min,p_max,v_max)
t = t_current-t_0;
ampl = (p_max - p_min)/2;
f = v_max / 2*pi*ampl;

p = p_0 + ampl*sine(t*2*pi*f);
