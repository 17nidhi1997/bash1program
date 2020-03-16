#! /bin/bash
echo "enter any key to start watch "
read n
start=$( date +%s)
echo "start time : $start"
echo "enter any key to stop watch "
read e
stop=$( date +%s)
elapsed=$(($stop - $start))
echo "end time: $stop"
echo "elapsed time is $elapsed in second"
