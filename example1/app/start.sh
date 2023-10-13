#!/bin/sh

#if [ -z "$SCHEDULER_ENVIRONMENT" ]; then
#  echo "SCHEDULER_ENVIRONMENT not set, assuming Development"
# SCHEDULER_ENVIRONMENT="Development"
#fi

# Select the crontab file based on the environment
#CRON_FILE="crontab.$SCHEDULER_ENVIRONMENT"

CRON_FILE=/app/crontab
echo "Loading crontab file: $CRON_FILE"

# Load the crontab file
crontab $CRON_FILE

# Start cron
echo "Starting cron..."
crond -f -d 5
crontab -l