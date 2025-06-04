#!/bin/bash

#assigning log values to variables
lognames=("heart_rate_log.log" "temperature_log.log" "water_usage_log.log")
filesource="active_logs"
reports="reports/analysis_report.txt"
#creating reports directory exists
mkdir -p "reports"

#displaying the menu
echo "Select log file to analyze:"
echo "1) Heart Rate (heart_rate.log)"
echo "2) Temperature (temperature.log)"
echo "3) Water Usage (water_usage.log)"
read -p "Enter choice (1-3): " user_choice

#selecting log file based on user input and validate user input
case $user_choice in
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
		echo "Invalid user input"
		exit 1
		;;
esac

#assigning variables
logfile="$filesource/${lognames[$index]}"

#checking if the file exists
if [[ -f $logfile ]]; then
	echo "Analyzing $logfile ..."
