#!/bin/bash

#assigning different log values to variables and identifying the file path
logname=("heart_rate_log.log" "temperature_log.log" "water_usage_log.log")
logdir="active_logs"
archivedir=("archived_logs/heart_data_archive" "archived_logs/temperature_data_archive" "archived_logs/water_usage_data_archive")

#prompting user a numbered menu of log types to choose a running log file to archive
echo "Select log to archive:"
echo "1) Heart Rate"
echo "2) Temperature"
echo "3) Water Usage"
read -p "Enter choice (1-3): " user_choice

#selecting appropriate log file and including error handling in case of invalid input
case "$user_choice" in 
	1)
		index=0
		;;
	2)
		index=1
		;;
	3) 
		index=2
		;;
	*)
		echo "Invalid user input."
		exit 1 
		;;
esac

#assigning variables and formatting timestamp
logfile="${logname[$index]}"
timestamp=$(date '+%Y-%m-%d_%H:%M:%S')
basename=$(basename "$logfile" _log.log)
archived_logname="${basename}_${timestamp}.log"
archive_dir="${archivedir[$index]}"
sourcefile="${logdir}/$logfile"

#checking if the file exist
echo "Checking for file: $sourcefile"
if [[ -f "$sourcefile" ]]; then 
	#ensure the archive directory exists
	mkdir -p "$archive_dir"
	#archive the file
	mv "$sourcefile" "$archive_dir/$archived_logname"
	#creating a new empty log file for continued monitoring
	touch "$sourcefile"
	echo "Successfully archived to $archive_dir/$archived_logname"
else 
	echo "Error!! missing log files at $sourcefile"
fi 
