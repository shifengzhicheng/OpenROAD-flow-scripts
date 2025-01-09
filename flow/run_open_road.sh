#!/bin/bash
source ~/Desktop/OpenROAD-flow-scripts/env.sh

# Check if directory is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Run OpenROAD in the specified directory
dir="$1"
echo "Running OpenROAD in directory: $dir"
cd "$FLOW_HOME/results/nangate45/$dir/base" || { echo "Failed to enter directory: $dir"; exit 1; }
openroad -gui # Assuming 'openroad' is the command to run OpenROAD
cd $FLOW_HOME

echo "OpenROAD run completed in directory: $dir."