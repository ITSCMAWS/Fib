#!/bin/bash
set -e

# Navigate to the application directory
cd /home/ubuntu/fibonacci

# Start the application in the background and save the PID
nohup python3 fibonacci.py > /dev/null 2>&1 &
echo $! > /home/ubuntu/fibonacci/pidfile
