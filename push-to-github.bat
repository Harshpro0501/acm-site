@echo off
cd /d "%~dp0"
set LOG=%~dp0push-log.txt
echo ==== %date% %time% ==== > "%LOG%"
where git >> "%LOG%" 2>&1 || (echo GIT NOT INSTALLED >> "%LOG%" & echo Git is not installed. & pause & exit /b 1)
if not exist .git git init >> "%LOG%" 2>&1
(echo push-log.txt& echo push-to-github.bat) >> .git\info\exclude
git config user.name >nul 2>&1 || git config user.name "Harshpro0501"
git config user.email >nul 2>&1 || git config user.email "Harshpro0501@users.noreply.github.com"
git add -A >> "%LOG%" 2>&1
git commit -m "ACM Student Chapter site + standalone acm-website" >> "%LOG%" 2>&1
git branch -M main >> "%LOG%" 2>&1
git remote remove origin >nul 2>&1
git remote add origin https://github.com/Harshpro0501/acm-site.git >> "%LOG%" 2>&1
git pull origin main --allow-unrelated-histories --no-rebase --no-edit >> "%LOG%" 2>&1
git push -u origin main >> "%LOG%" 2>&1
echo EXIT %errorlevel% >> "%LOG%"
type "%LOG%"
echo.
echo Done. You can close this window.
pause
