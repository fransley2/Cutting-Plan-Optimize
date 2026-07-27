@echo off

cd /d "%~dp0"

start "" python\python.exe -m http.server 3000

timeout /t 2 >nul

start "" msedge.exe --app=http://127.0.0.1:3000 --user-data-dir=.edge-profile