#This bash script queries current, voltage and power measurements
#from the Delta Elektronika MS3300 Power Supply
#once all user input is gathered it runs until the user
#uses the break (Ctrl+C) command for Unix
#The data is saved in a .CSV format with one header line
#indicating the meaning of the data

#!/bin/sh

CURR_MEAS_STR="meas:curr?"
VOL_MEAS_STR="meas:vol?"
POW_MEAS_STR="meas:pow?"
HEADER_STRING="Time\t\tCurrent\tVoltage\tPower"
# two tabs for header string as time is long
IP_ADDRESS=169.254.0.2
PORT=8462

# Detect OS for date; gdate is needed on mac, date works on linux
osName="$(uname -s)"
case "${osName}" in
   Linux*)    operatingSystem=Linux;;
   Darwin*)   operatingSystem=Mac;;
   *)         operatingSystem=UNKNOWN;;
esac
if [ "$operatingSystem" = "UNKNOWN" ]
then
   echo "Unknown operatingsystem! Quitting"
   exit 1
elif [ "$operatingSystem" = "Linux" ]
then
   dateCommand=date
elif [ "$operatingSystem" = "Mac" ]
then
   dateCommand=gdate
fi

echo "Executing script on $operatingSystem"

#Indicate to user where file will be saved
echo "File will be saved in:"
echo "$(pwd)"

#prompt user for filename
read -p "Enter foldername to save in: " WRITE_FILE
DEFAULT_FILE="psuMeasurements.txt"
# We'll save the measurements in DEFAULT_FILE first, so our matlab script can run on it. Then well move it to write_file

#if [ -f $WRITE_FILE ]
#    WRITE_FILE=$WRITE_FILE "1"

#echo "File will be saved as $(echo $WRITE_FILE)"

#Write header to file
echo -e $HEADER_STRING > $DEFAULT_FILE

echo "Stop recording by pressing Ctrl+C"

finished=false

function onInterrupt {
  echo -e "\nCleaning up; running matlab script, might take awhile"
  # run matlab file to generate picture. Piped into bitbucket as to avoid matlab output
  matlab -nodisplay -nosplash -nodesktop -r "run('depower_test.m');exit;" > /dev/null
  echo "Matlab script finished"
  # now move files to folder and open picture
  mkdir "$WRITE_FILE"
  mv "$DEFAULT_FILE" "$WRITE_FILE""/"
  DEFAULT_PICTURE="psuMeasurements.png"
  mv "$DEFAULT_PICTURE" "$WRITE_FILE""/"
  # finally, open picture. Probably also OS dependent, still implement that for mac
  # ampersand to detach from process
  eog "$WRITE_FILE"/"$DEFAULT_PICTURE" &
  exit 0
}

# makes ctrl-C run onInterrupt
trap onInterrupt SIGINT

while [ "$finished" != "true" ]
do
    CURR_MEAS_VAL=$(echo $CURR_MEAS_STR | nc $IP_ADDRESS $PORT)
    VOL_MEAS_VAL=$(echo $VOL_MEAS_STR | nc $IP_ADDRESS $PORT)
    POW_MEAS_VAL=$(echo $POW_MEAS_STR | nc $IP_ADDRESS $PORT)
    TIMESTAMP="$($dateCommand +%H:%M:%S:%3N)"
    echo -e "$TIMESTAMP\t$CURR_MEAS_VAL\t$VOL_MEAS_VAL\t$POW_MEAS_VAL" >> $DEFAULT_FILE
done
