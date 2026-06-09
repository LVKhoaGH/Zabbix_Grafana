@echo off
setlocal enabledelayedexpansion

:: 1. Thong tin cau hinh
set REPO_URL=https://github.com/LVKhoaGH/Zabbix_Grafana.git
set BRANCH_NAME=main

:: 2. Di chuyen den thu muc du an
cd /d "D:\Projects\Zabbix_Grafana"

:: 3. Khoi tao hoac ket noi Git
if not exist ".git" (
    echo [INFO] Khoi tao Repository...
    git init
    git remote add origin %REPO_URL%
    git branch -M %BRANCH_NAME%
)

:: 4. Thiet lap xac thuc (Credential Helper)
git config --global credential.helper store

:: 5. Commit va Push
echo [INFO] Dang them file...
git add .
set datetime=%date:~-4%-%date:~3,2%-%date:~0,2%_%time:~0,2%-%time:~3,2%
set datetime=%datetime: =0%
git commit -m "Update: %datetime%"

echo [INFO] Dang day code len GitHub...
git push -u origin %BRANCH_NAME%

if %errorlevel% neq 0 (
    echo [ERROR] Push that bai! Kiem tra ket noi mang hoac Token cua ban.
    pause
) else (
    echo [SUCCESS] Da cap nhat du lieu thanh cong!
)
pause