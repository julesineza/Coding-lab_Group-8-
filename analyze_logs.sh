#!/bin/bash

# Show menu
echo "Select log file to analyze:"
echo "1) Heart Rate (heart_rate.log)"
echo "2) Temperature (temperature.log)"
echo "3) Water Usage (water_usage.log)"
echo "----------------------------------"
read -p "Enter choice (1-3): " choice

# Make sure the reports directory exists
mkdir -p reports

# Set the output report file
report="reports/analysis_report.txt"

# Validate input
while [[ "$choice" != "1" && "$choice" != "2" && "$choice" != "3" ]]; do
    echo "Invalid choice. Please enter 1, 2, or 3."
    read -p "Enter choice (1-3): " choice
done

# Set variables based on choice
if [ "$choice" == "1" ]; then
    logfile="active_logs/heart_rate_log.log"
    device1="HeartRate_Monitor_A"
    device2="HeartRate_Monitor_B"
elif [ "$choice" == "2" ]; then
    logfile="active_logs/temperature_log.log"
    device1="Temp_Recorder_A"
    device2="Temp_Recorder_B"
else
    logfile="active_logs/water_usage_log.log"
    device1="Water_Consumption_Meter"
    device2=""
fi

# Check if file exists
if [ ! -f "$logfile" ]; then
    echo "Log file not found: $logfile"
    exit 1
fi


# Add header to report
echo "------------------------------------------" >> "$report"
echo "Analysis Report for $logfile" >> "$report"
echo "Date: $(date '+%Y-%m-%d %H:%M:%S')" >> "$report"

# Count entries
count1=$(grep -c "$device1" "$logfile")
echo "Device: $device1 - $count1 entries" >> "$report"

# Only count second device if it exists
if [ ! -z "$device2" ]; then
    count2=$(grep -c "$device2" "$logfile")
    echo "Device: $device2 - $count2 entries" >> "$report"
fi

# First and last timestamp
first_time=$(head -n 1 "$logfile" | awk '{print $1, $2}')
last_time=$(tail -n 1 "$logfile" | awk '{print $1, $2}')
echo "First entry timestamp: $first_time" >> "$report"
echo "Last entry timestamp:  $last_time" >> "$report"

echo "------------------------------------------" >> "$report"
echo "Analysis complete. Report saved to $report"
