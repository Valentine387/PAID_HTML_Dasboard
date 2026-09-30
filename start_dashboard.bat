@echo off
REM Opens the PAID livestock dashboard so it can read PAID_View_1.xlsx from this folder.
REM Keep this window open while you use the dashboard. Close it to stop.
cd /d "%~dp0"
set PAGE=PAID_Livestock_Dashboard.html
if not "%~1"=="" set PAGE=%~1
where python >nul 2>nul && (set PY=python) || (set PY=py)
start "" "http://localhost:8000/%PAGE%"
%PY% -m http.server 8000
