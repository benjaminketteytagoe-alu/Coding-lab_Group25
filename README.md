# Hospital Data Monitoring & Archival System

## Project Objective

The team built an automated log management system that:

* Collects real-time patient health metrics and water usage data
* Archives active logs interactively with timestamping
* Analyzes logs to extract meaningful patterns
* Demonstrates proficiency in shell scripting, log handling, and CLI data analysis

---

## System Setup

### Python Simulators (These were run in separate terminals)

```bash
python3 heart_monitor.py start
python3 temp_sensor.py start
python3 water_meter.py start

```

---

## First Script: `archive_logs.sh`

### Project description:

An interactive shell script to archive a selected log type (heart, temperature, water).

### Features:

* User menu for selecting logs
* Archives the selected log with a timestamp
* Replaces active log with a new blank one
* Error handling for invalid choices or missing files

### Example of the Output from the `archive_logs.sh`:

```bash
$ ./archive_logs.sh
Select log to archive:
1) Heart Rate
2) Temperature
3) Water Usage
Enter choice (1-3): 1

Archiving heart_rate.log... Loading!
Successfully archived to heart_data_archive/heart_rate_2024-06-18_15:22:10.log
```

---

## Second script: `analyze_logs.sh`

### Project description:

Analyzes selected logs to extract device frequency and timestamps.

### Features:

* Interactive selection menu
* Device count summary
* First and last timestamped entries
* Appends findings to `reports/analysis_report.txt`

---

## The team's Learning Objectives were:

### 1. Shell Scripting Proficiency

* Develop interactive scripts
* Master file operations (`mv`, `touch`, `test`, `case`, `read`)
* Implement validation and error handling

### 2. Log Management

* Design archival system with timestamps
* Automate rotation without data loss
* Organize logs into dedicated folders

### 3. Data Analysis with CLI Tools

* Extract insights using `awk`, `grep`, `sort`, `uniq`
* Generate structured, timestamped reports
* Append logs to historical files for audit

---

## Team Task Assignment

* **Kevin**: Built and tested `archive_logs.sh`
* **Prince**: Implemented `analyze_logs.sh` with reporting
* **Ishami**: Continued and completed the analyze_logs.sh file with reporting
* **Benjamin**: Documented the system in `README.md`and setup and tested the Python simulators
* **Kelvin**: Did the final repo setup and GitHub management and the final README.md 

## Learning Objectives from the Project
* The team ensured all scripts have executable permissions:
  `chmod +x archive_logs.sh analyze_logs.sh`
* We tested scripts under real-time logging and were successful.
* We also Kept readable outputs, well-formatted and commented for easy understanding of the scripts.

---
### Team Appreciation
This project was successfully done with strong team effort and commitment from everyone onboard. 
---
