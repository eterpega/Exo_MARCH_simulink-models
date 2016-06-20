clear all
close all
clc

% load recorded gait

filename1 = input('File you want to convert> ', 's');
file = load([filename1 '.mat']);


% extract all vectors
time_rec = file.DATA(1,:);
RHFE_rec = file.DATA(2,:);
RKFE_rec = file.DATA(3,:);
LHFE_rec = file.DATA(4,:);
LKFE_rec = file.DATA(5,:);



% change sample freq

factor = 10;  % factor to multiply the sampling rate with

time = interp(time_rec, factor);
RHFE = interp1(time_rec , RHFE_rec , time , 'linear');
RKFE = interp1(time_rec , RKFE_rec , time , 'linear');
LHFE = interp1(time_rec , LHFE_rec , time , 'linear');
LKFE = interp1(time_rec , LKFE_rec , time , 'linear');


% cut off the first value (it is a NAN for some reason)
time = time(2:length(time)-10);
RHFE = RHFE(2:length(RHFE)-10);
RKFE = RKFE(2:length(RKFE)-10);
LHFE = LHFE(2:length(LHFE)-10);
LKFE = LKFE(2:length(LKFE)-10);

gait = [time; RHFE; RKFE; LHFE; LKFE];

% write to file
save([filename1 '_interp' '.mat'], 'gait');