#!/bin/bash
# Simple HTTP server for local development

PORT=${1:-8000}

echo "🚀 Starting server on http://localhost:$PORT"
echo "Press Ctrl+C to stop"

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    python3 -m http.server $PORT
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer $PORT
else
    echo "❌ Python not found. Please install Python to run the server."
    echo "Alternatively, you can open index.html directly in your browser."
fi
