#!/bin/bash

# Change to the directory where this script is located
cd "$(dirname "$0")"

# Run the command line script first
./start_jupyter_linux_core.sh

# Open the browser automatically (works on most Linux distributions)
xdg-open http://127.0.0.1:8888/lab

# Keep the terminal window open so users can see the instructions
echo "You can close this window after you're done using Jupyter Lab."
echo "Press Enter to close this window..."
read
