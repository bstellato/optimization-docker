#!/bin/bash

# Change to the directory where this script is located
cd "$(dirname "$0")"

echo "Starting Jupyter Lab environment..."
docker compose up -d

# Wait a moment for the server to start
sleep 2

echo ""
echo "✅ Jupyter Lab is running!"
echo "📊 Connect at: http://127.0.0.1:8888/lab"
echo ""
echo "To stop the server when you're done:"
echo "docker compose down"
echo ""

# Open the browser automatically
open http://127.0.0.1:8888/lab

# Keep the terminal window open so users can see the instructions
echo "You can close this window after you're done using Jupyter Lab."
echo "Press any key to close this window..."
read -n 1
