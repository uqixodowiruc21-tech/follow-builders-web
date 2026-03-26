@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Starting static server for follow-builders-web ...
echo Open the URL shown below in your browser (e.g. http://localhost:3456)
npx -y serve . -l 3456
