# Hospital Data Monitoring & Archival System

## Project Overview

This project simulates a hospital data monitoring and log management system. It is designed to:

* Collect real-time data from devices (heart rate monitor, temperature sensor, and water usage meter)
* Allow users to archive selected logs interactively
* Analyze archived logs to generate device usage reports and timestamp patterns

The system demonstrates proficiency in:

* Interactive shell scripting
* Log file processing
* Linux-based data analysis tools

## Directory Structure

```
hospital_data/
├── active_logs/
│   ├── heart_rate.log
│   ├── temperature.log
│   └── water_usage.log
├── heart_data_archive/
├── temp_data_archive/
├── water_data_archive/
└── reports/
    └── analysis_report.txt
```

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/Coding-lab_GroupX.git
cd Coding-lab_GroupX
```

### 2. Setup Required Directories and Files

```bash
mkdir -p hospital_data/{active_logs,heart_data_archive,temp_data_archive,water_data_archive,reports}
touch hospital_data/active_logs/{heart_rate.log,temperature.log,water_usage.log}
touch hospital_data/reports/analysis_report.txt
```

### 3. Start Monitoring Devices (Run in Separate Terminals)

```bash
python3 heart_monitor.py
python3 temp_sensor.py
python3 water_meter.py
```

This begins writing live data to the corresponding `.log` files in the `active_logs` folder.

## Archiving Logs

Use the `archive_logs.sh` script to interactively archive a selected log file.

```bash
chmod +x archive_logs.sh
./archive_logs.sh
```

Features:

* Prompts user to choose a log file to archive
* Archives the file into the appropriate folder with a timestamp
* Creates a new empty file for continued logging

Example archive name: `heart_rate_2025-06-03_14:25:10.log`

## Analyzing Logs

Use the `analyze_logs.sh` script to count device entries and analyze timestamps.

```bash
chmod +x analyze_logs.sh
./analyze_logs.sh
```

Features:

* Prompts user to select a log to analyze
* Counts total entries per device
* Records the first and last timestamps (bonus)
* Appends the results to `hospital_data/reports/analysis_report.txt`

## Files Description

| File               | Description                                   |
| ------------------ | --------------------------------------------- |
| `heart_monitor.py` | Simulates heart rate device                   |
| `temp_sensor.py`   | Simulates temperature sensor                  |
| `water_meter.py`   | Simulates water usage meter                   |
| `archive_logs.sh`  | Interactive script for archiving logs         |
| `analyze_logs.sh`  | Script for analyzing logs and writing reports |
| `README.md`        | Documentation of the project                  |

## Learning Outcomes

* Develop shell scripts using interactive menus
* Automate log file archival with timestamps
* Use CLI tools (`awk`, `grep`, `sort`, `uniq`) for data analysis
* Work with file structures and permissions in Linux
* Collaborate effectively using Git and GitHub

## Submission Guidelines

* GitHub repository name: `Coding-lab_GroupX`
* All team members should push commits to show contribution
* Repository must contain:

  * `archive_logs.sh`
  * `analyze_logs.sh`
  * `heart_monitor.py`
  * `temp_sensor.py`
  * `water_meter.py`
  * `README.md`

## Contributors

* Vanessa Umwari
* \[Add other group members' names here]

