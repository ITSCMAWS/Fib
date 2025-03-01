#!/bin/bash
set -e

# Stop any running instance of the application
if [ -f /home/ubuntu/fibonacci/pidfile ]; then
    kill $(cat /home/ubuntu/fibonacci/pidfile) || true
    rm -f /home/ubuntu/fibonacci/pidfile
fi

# Ensure the deployment directory exists but is empty
mkdir -p /home/ubuntu/fibonacci
# Remove all files including hidden ones
rm -rf /home/ubuntu/fibonacci/{*,.*} 2>/dev/null || true