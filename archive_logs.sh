#!/bin/bash

echo -e "1) heart_rate.log \n2) temperature.log \n3) water_usage.log"
echo "Enter choice 1-3:"
read archive_select

# Ensure archive directories exist
mkdir -p archived_logs/heart_data_archive
mkdir -p archived_logs/temperature_data_archive
mkdir -p archived_logs/water_usage_data_archive

# Validate input
while [[ "$archive_select" != "1" && "$archive_select" != "2" && "$archive_select" != "3" ]]; do
    echo "Invalid input, must be 1, 2, or 3"
    echo "---------------------------------"
    echo "Enter choice: "
    read archive_select
done

# Archiving logic
if [ "$archive_select" -eq 1 ]; then
    echo "Archiving heart_rate.log..."
    log_file="active_logs/heart_rate_log.log"
    archive_name="heart_rate_$(date +%Y-%m-%d_%H-%M-%S).log"
    archive_dir="archived_logs/heart_data_archive"
    archive_path="$archive_dir/$archive_name"

    if [ -f "$log_file" ]; then
        if [ -d "$archive_dir" ]; then
            mv "$log_file" "$archive_path"
            echo "" > "$log_file"
            echo "Successfully archived to $archive_path"
        else
            echo "Error: Archive directory issue"
            exit 1
        fi
    else
        echo "Error: Log file is missing"
        exit 1
    fi

elif [ "$archive_select" -eq 2 ]; then
    echo "Archiving temperature.log..."
    log_file="active_logs/temperature_log.log"
    archive_name="temperature_$(date +%Y-%m-%d_%H-%M-%S).log"
    archive_dir="archived_logs/temperature_data_archive"
    archive_path="$archive_dir/$archive_name"

    if [ -f "$log_file" ]; then
        if [ -d "$archive_dir" ]; then
            mv "$log_file" "$archive_path"
            echo "" > "$log_file"
            echo "Successfully archived to $archive_path"
        else
            echo "Error: Archive directory issue"
            exit 1
        fi
    else
        echo "Error: Log file is missing"
        exit 1
    fi

elif [ "$archive_select" -eq 3 ]; then
    echo "Archiving water_usage.log..."
    log_file="active_logs/water_usage_log.log"
    archive_name="water_usage_$(date +%Y-%m-%d_%H-%M-%S).log"
    archive_dir="archived_logs/water_usage_data_archive"
    archive_path="$archive_dir/$archive_name"

    if [ -f "$log_file" ]; then
        if [ -d "$archive_dir" ]; then
            mv "$log_file" "$archive_path"
            echo "" > "$log_file"
            echo "Successfully archived to $archive_path"
        else
            echo "Error: Archive directory issue"
            exit 1
        fi
    else
        echo "Error: Log file is missing"
        exit 1
    fi
fi
