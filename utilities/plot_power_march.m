motorPower = dataMARCH.LKFE.receivedFromSOMANET.data(:,4)  .* dataMARCH.LKFE.receivedFromSOMANET.data(:,14);
electricalPower = dataMARCH.LKFE.miscDataSOMANET.data(:,2);

time = dataMARCH.LHFE.time;
figure
plot(time, smooth(motorPower,40))
hold on
plot(time, smooth(electricalPower,40))
grid on
title('Power')
ylabel('Power [W]')
xlabel('Time [s]')
legend('Motor Output Power', 'Electrical Power')