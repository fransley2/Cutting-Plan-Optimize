
@echo off
title Cutting Plan Optimize

cd /d "%~dp0"

start "CPO Server" /min cmd /c "python\python.exe -m http.server 3000"

:WAIT
powershell -Command "try {(Invoke-WebRequest 'http://127.0.0.1:3000' -UseBasicParsing).StatusCode} catch {exit 1}" >nul 2>&1

if errorlevel 1 (
    timeout /t 1 >nul
    goto WAIT
)

start "" "http://127.0.0.1:3000"

exit
