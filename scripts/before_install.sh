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

# Don't set permissions here - AppSpec.yml will handle this