#!/bin/bash

# Define the name of the CSV file and the directory in which it is created.
CSV_DIRECTORY="backupCSVlog"
CSV_FILE="$CSV_DIRECTORY/backupCSVlog.csv"

# Check whether the CSV directory exists. If not, create it.
if [ ! -d "$CSV_DIRECTORY" ]; then
    mkdir -p "$CSV_DIRECTORY"
fi

# Enter the current date and time.
current_date=$(date +"%Y-%m-%d")
current_time=$(date +"%H:%M:%S")

# Calculate the total size of all files and folders (without backupCSVlog).
total_size=$(du -s --exclude="$CSV_DIRECTORY" . | awk '{print $1}')

# If the CSV file exists, read out the size of the last line.
last_size="Not Applicable"
if [ -f "$CSV_FILE" ]; then
    last_size=$(tail -n 1 "$CSV_FILE" | cut -d ',' -f 3)
fi

# Compare the size with the previous size and set the Changes status accordingly.
if [ "$last_size" == "Not Applicable" ]; then
    changes="initial"
elif [ "$total_size" -eq "$last_size" ]; then
    changes="No"
else
    changes="Yes"
fi

# Write the information to the CSV file.
echo "$current_date,$current_time,$total_size,$changes" >> "$CSV_FILE"

# Output of the success message.
echo "CSV-Datei wurde aktualisiert: $CSV_FILE"