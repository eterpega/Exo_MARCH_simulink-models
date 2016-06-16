f=SimulinkRealTime.fileSystem;
h=fopen(f,'DATA.dat');
data=fread(f,h);
f.fclose(h);

% Unpack the data.
x=SimulinkRealTime.utils.getFileScopeData(data);

iets = x.data(:,1);