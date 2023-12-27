#!/bin/bash

# Function to start the server
start_server() {
    java -Xmx2G -Xms1G -jar fabric-server-launch.jar nogui &
    SERVER_PID=$!
}

# Function to check if the server is running
check_server() {
    if ps -p $SERVER_PID > /dev/null; then
        echo "Server is running."
    else
        echo "Server is not running. Restarting..."
        start_server
    fi
}

# Start the server
start_server

# Check the server status every 5 minutes (300 seconds)
while true; do
    sleep 300
    check_server
done
