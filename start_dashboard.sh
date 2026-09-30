#!/bin/sh
# Opens the PAID livestock dashboard so it can read PAID_View_1.xlsx from this folder.
# Keep this terminal open while you use the dashboard; press Ctrl+C to stop.
cd "$(dirname "$0")"
PAGE="${1:-PAID_Livestock_Dashboard.html}"
( sleep 1; (xdg-open "http://localhost:8000/$PAGE" || open "http://localhost:8000/$PAGE") >/dev/null 2>&1 ) &
python3 -m http.server 8000
