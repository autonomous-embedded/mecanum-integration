#!/bin/bash

# Get the absolute path of the current directory
CURRENT_DIR=$(pwd)

# Initialize flags to check if all directories and file are found
all_found=true

# Search for the high-level-system-4wd-mecanum directory in the current directory
MECANUM_HL_PATH_RELATIVE=$(find . -type d -name "high-level-system-4wd-mecanum" | head -n 1; 2>/dev/null)
if [ -n "$MECANUM_HL_PATH_RELATIVE" ]; then
    MECANUM_HL_PATH="${CURRENT_DIR}/${MECANUM_HL_PATH_RELATIVE#./}"
    export MECANUM_HL_PATH
else
    all_found=false
fi

# Search for the low-level-system-4wd-mecanum directory in the current directory
MECANUM_LL_PATH_RELATIVE=$(find . -type d -name "low-level-system-4wd-mecanum" | head -n 1; 2>/dev/null)
if [ -n "$MECANUM_LL_PATH_RELATIVE" ]; then
    MECANUM_LL_PATH="${CURRENT_DIR}/${MECANUM_LL_PATH_RELATIVE#./}"
    export MECANUM_LL_PATH
else
    all_found=false
fi

# Check if all paths were found and export MECANUM_WS_ROOT if so
if [ "$all_found" = true ]; then
    MECANUM_WS_ROOT_PATH="$CURRENT_DIR"
    export MECANUM_WS_ROOT_PATH
    echo "MECANUM_WS_ROOT_PATH set to $MECANUM_WS_ROOT_PATH"
else
    echo "Not all components were found, MECANUM_WS_ROOT_PATH not set"
fi

# Print the status of each path
if [ -n "$MECANUM_HL_PATH" ]; then
    echo "MECANUM_HL_PATH set to $MECANUM_HL_PATH"
else
    echo "high-level-system-4wd-mecanum directory not found"
fi

if [ -n "$MECANUM_LL_PATH" ]; then
    echo "MECANUM_LL_PATH set to $MECANUM_LL_PATH"
else
    echo "low-level-system-4wd-mecanum directory not found"
fi

