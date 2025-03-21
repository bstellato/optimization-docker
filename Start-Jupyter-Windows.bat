@echo off
:: Change to the directory where this script is located
cd /d "%~dp0"

:: Run the command line script first
call start_jupyter_windows.bat

:: Open the browser automatically
start http://127.0.0.1:8888/lab

:: Keep the command window open so users can see the instructions
echo You can close this window after you're done using Jupyter Lab.
pause
