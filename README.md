# **Group 8 coding lab**

# Members:

-**Ineza Jules** : submitted the archive_logs.sh and the water_consumption.py file

-**Alieu O Jobe** : submitted the temperature_recorder.py file

-**Vanessa Umwari** : Wrote and pushed the documentation in the README.md file

-**Jean Nepo Munezero** : pushed the analyze_logs.sh file

-**Gislain Kabanda** : pushed the heart_rate_monitor.py

-**MBAZOGHE NNA TITIANA CLEMENCE**

# Hospital Data Monitoring & Archival System

This project includes two main shell scripts that interact with real-time patient
and resource monitoring logs generated by Python simulators that were provided in
the task.


## Task 1: Interactive Archival Script (`archive_logs.sh`)

### Description

This script helps archive active log files safely without interrupting data
collection. When run, it prompts the user to select which log to archive from the
following options:

1. Heart Rate (`heart_rate.log`)
2. Temperature (`temperature.log`)
3. Water Usage (`water_usage.log`)
4. 
### How It Works

- The user selects a log type by entering a number (1-3).
- The script validates the input using a while loop until the user enters the
collect number.
- It checks if the corresponding log file exists.
- It moves the active log to an archive folder with a timestamped filename.
- It creates a new empty log file so data collection can continue uninterrupted.
- The script also handles errors such as invalid input, missing log files, or
archive directory issues.

## Task 2: Intelligent Analysis Script (`analyze_logs.sh`)

### Description

This script analyzes log files to generate simple reports showing how many entries
each device has produced, along with timestamps.

### How It Works

- The user is prompted to select which log file to analyze (Heart Rate,
Temperature, or Water Usage).
- The script validates the user input.
- It counts the number of entries per device (for Heart Rate and Temperature logs).
- For Water Usage, which simulates only one device, it counts total entries.
- The script extracts the timestamp of the first and last entries.
- The results are appended to a cumulative report file
(`reports/analysis_report.txt`) with a timestamp for record keeping.

## Notes

- The Python simulators generate log files in the `active_logs/` directory.
- The scripts expect logs named `heart_rate_log.log`, `temperature_log.log`, and
`water_usage_log.log` for consistency.
- Make sure archive directories and report folders exist or are created before
running the scripts.



Feel free to reach out if you have any questions or issues running the scripts!
Annotations
