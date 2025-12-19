@echo off
cd /d C:\Users\ahnaf\AppData\Roaming\Code\User\snippets

git status --porcelain | findstr . >nul
IF ERRORLEVEL 1 exit /b

git add .
git commit -m "Auto update %date% %time%"
git push
