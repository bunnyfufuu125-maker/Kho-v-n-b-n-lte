@echo off
chcp 65001 >nul
cd /d "%~dp0"
where npm >nul 2>nul || (echo Chua cai Node.js. Hay tai tai https://nodejs.org roi chay lai. & pause & exit /b 1)
if not exist node_modules (echo Dang tai thu vien lan dau, vui long doi... & call npm install || (pause & exit /b 1))
call npm start
