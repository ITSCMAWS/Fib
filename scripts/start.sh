#!/bin/bash
set -e

# Navigate to the application directory
cd /home/ubuntu/fibonacci

# Start the Flask application in the background and save the PID
nohup python fibonacci.py > /dev/null 2>&1 &
echo $! > /home/ubuntu/fibonacci/pidfile
