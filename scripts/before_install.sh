#!/bin/bash
set -e

# Stop any running instance of the application
#if [ -f /home/ubuntu/fibonacci/pidfile ]; then
#    kill $(cat /home/ubuntu/fibonacci/pidfile) || true
#    rm -f /home/ubuntu/fibonacci/pidfile
#fi

# Ensure the deployment directory exists
mkdir -p /home/ubuntu/fibonacci
rm -rf /home/ubuntu/fibonacci/*
# Add these lines to the end of before_install.sh
echo "before_install.sh completed successfully" > /tmp/codedeploy_debug.log
exit 0