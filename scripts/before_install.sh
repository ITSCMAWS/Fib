#!/bin/bash
set -e

# Stop any running instance of the application
if [ -f /home/ubuntu/fibonacci/pidfile ]; then
    kill $(cat /home/ubuntu/fibonacci/pidfile) || true
    rm -f /home/ubuntu/fibonacci/pidfile
fi

# Delete and recreate the target directory
rm -rf /home/ubuntu/fibonacci
mkdir -p /home/ubuntu/fibonacci
mkdir -p /home/ubuntu/fibonacci/scripts

# Output debugging info
echo "Current directory: $(pwd)"
echo "Directory listing: $(ls -la)"
