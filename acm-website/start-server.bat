@echo off
cd /d "%~dp0"
echo Starting the ACM website at http://localhost:8000  (close this window to stop)
start "" http://localhost:8000
where python >nul 2>nul && (python -m http.server 8000 & goto :eof)
where py >nul 2>nul && (py -m http.server 8000 & goto :eof)
npx --yes serve -l 8000 .
