#!/bin/bash

# Script to check if ROS Noetic is installed on Ubuntu 20.04

echo "Checking for ROS Noetic installation..."

# Check for any installed package starting with 'ros-noetic-'
if dpkg-query -W -f='${Status}' 'ros-noetic-*' 2>/dev/null | grep -q "install ok installed"; then
    echo "ROS Noetic is installed."
else
    echo "ROS Noetic is not installed."
fi

