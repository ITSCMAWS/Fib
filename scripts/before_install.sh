#!/bin/bash
set -e

# Stop any running instance of the application
if [ -f /home/ubuntu/fibonacci/pidfile ]; then
    kill $(cat /home/ubuntu/fibonacci/pidfile) || true
    rm -f /home/ubuntu/fibonacci/pidfile
fi

# Ensure the deployment directory exists
mkdir -p /home/ubuntu/fibonacci
# Remove ALL files (including hidden ones)
rm -rf /home/ubuntu/fibonacci/{*,.*}
# Or alternatively, just remove and recreate the directory:
# rm -rf /home/ubuntu/fibonacci
# mkdir -p /home/ubuntu/fibonacci
# Add this at the end of your before_install.sh
