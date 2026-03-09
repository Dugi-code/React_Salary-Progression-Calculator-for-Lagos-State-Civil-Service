@echo off
echo Starting Salary Progression Calculator Frontend...
echo.
echo Frontend will be available at: http://localhost:3000/index.html
echo.
echo Press Ctrl+C to stop the server
echo.
cd /d "%~dp0"
python -m http.server 3000

