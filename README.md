# BackupCSVLogger
<img src="https://github.com/GaboCapo/BackupCSVLogger/assets/39612138/a7347405-d861-44ee-a0db-aab9cc424ee5" width="100" />

A simple shell script for monitoring the size of files and directories and logging changes in a CSV file.

---

![GitHub](https://img.shields.io/github/license/GaboCapo/BackupCSVLogger)
![GitHub last commit](https://img.shields.io/github/last-commit/GaboCapo/BackupCSVLogger)

A simple shell script for monitoring the size of files and directories and logging changes in a CSV file.

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Usage](#usage)

## Overview

This shell script allows you to monitor changes in the size of files and directories within a specified directory and log these changes in a CSV file. The script creates a CSV file with columns "Date," "Time," "Size in bytes," and "Changes." It automatically detects whether changes have occurred and logs them accordingly.

## Prerequisites

To run this script, you will need:

- A Unix-like environment (e.g., Linux or macOS).
- Bash (Bourne Again Shell).
- Permission to execute the script.

## Usage

1. Clone the repository or download the script:

```shell
curl -O https://raw.githubusercontent.com/GaboCapo/BackupCSVLogger/main/BackupCSVLogger.sh
```

2. To make the script executable, use the following commands:

```shell
chmod +x BackupCSVLogger.sh
```

3. Execute the script:

```shell
./BackupCSVLogger.sh
```

Changes in the size of files and directories will be logged in the CSV file backupCSVlog/backupCSVlog.csv.

