th = linspace( 0, pi, 1000);
R = 0.50;
x = R*cos(th)+R;
z = 0.2*R*sin(th);
spline = zeros(3,length(x));
spline(1,:) = x;
spline(3,:) = z;
spline = fliplr(spline);

plot(x,z);
