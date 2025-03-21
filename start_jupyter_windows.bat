@echo off
echo Starting Jupyter Lab environment...
docker compose up -d

:: Wait a moment for the server to start
timeout /t 2 /nobreak >nul

echo.
echo ✅ Jupyter Lab is running!
echo 📊 Connect at: http://127.0.0.1:8888/lab
echo.
echo To stop the server when you're done:
echo docker compose down
echo.
