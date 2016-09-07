clc
close all
clear
encoder = [668149 652315 637513 628520 618696 609286 603794 597506 595299 578085 553616 534444 519479 499667 465886 392688];

p = [-0.01 -0.01 -0.01 -0.01 -0.016 -0.02 -0.02 -0.06 -0.128 -0.128 -0.128 -0.128 -0.128 -0.128 -0.128 -0.128];

encoder2 = encoder(3:10);
p2 = p(3:10);
plot(encoder,p);



hold on
% plot(spring,p)

x = linspace(encoder(end-6),encoder(3),1000);
y = smf(x,[x(1) x(end-450)])*(0.09)-0.100;
plot(x,y);
CONTROL_UPPER_LIMIT = 610446;
CONTROL_LOWER_LIMIT = 558918;
for i=1:length(x)

	if (y(i) > CONTROL_UPPER_LIMIT)
		y2(i) = -0.01;
    elseif ( y(i) <= CONTROL_UPPER_LIMIT && y(i) > CONTROL_LOWER_LIMIT)
		y2(i) = -0.055 + 0.045 * sin((y(i)-CONTROL_LOWER_LIMIT)*(PI/(CONTROL_UPPER_LIMIT-CONTROL_LOWER_LIMIT))-0.5*PI);
	else
		y2(i) = -0.1;
    end
end
plot(x,y2)
%ydiff = diff(y2);
%figure
%plot(ydiff)
%figure
%ddy = diff(ydiff);
%plot(ddy)










