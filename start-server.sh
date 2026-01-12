#!/bin/bash

# Kill any process using port 8000
echo "Checking for processes on port 8000..."
lsof -ti:8000 | xargs kill -9 2>/dev/null || true

echo "Starting local server on http://localhost:8000"
echo "Open: http://localhost:8000/number-recognition-demo.html"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

cd "$(dirname "$0")"
python3 -m http.server 8000
