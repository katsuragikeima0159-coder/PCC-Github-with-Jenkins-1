#!/bin/bash

LOGFILE="/var/log/system_maintenance.log"

echo "starting system maintenance..." >> "$LOGFILE"

echo "Updating package repository..." >> "$LOGFILE"
sudo apt update >> "LOGFILE" 2>&1

echo "Installing nginx, htop, and curl..." >> "$LOGFILE"
sudo apt install -y nginx htop curl >> "$LOGFILE" 2>&1

echo "Enabling and starting nginx >>> " >> "$LOGFILE"
sudo systemctl enable nginx >> "$LOGFILE" 2>&1
sudo systemctl start nginx >> "$LOGFILE" 2>&1

echo "Waiting 30 seconds ..." >> "LOGFILE"
sleep 30

echo "End of Run" >> "$LOGFILE"
