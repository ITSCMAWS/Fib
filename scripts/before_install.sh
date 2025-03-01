#!/bin/bash
set -e

# Stop any running instance of the application
if [ -f /home/ubuntu/fibonacci/pidfile ]; then
    kill $(cat /home/ubuntu/fibonacci/pidfile) || true
    rm -f /home/ubuntu/fibonacci/pidfile
fi

# Clean the directory completely
rm -rf /home/ubuntu/fibonacci
mkdir -p /home/ubuntu/fibonacci

# Make scripts executable
mkdir -p /home/ubuntu/fibonacci/scripts
chmod +x /home/ubuntu/fibonacci/scripts/*.sh 2>/dev/null || true