@echo off
:: Di chuyển đến thư mục dự án
cd /d "D:\Projects\Zabbix_Grafana"

echo [INFO] Dang kiem tra va dong bo du lieu tu GitHub...
:: Lay du lieu moi nhat tu server ve de tranh xung dot
git pull origin main --allow-unrelated-histories

echo [INFO] Dang chuan bi cac thay doi...
:: Them toan bo file vao stage
git add .

:: Tao commit voi thoi gian hien tai
set datetime=%date:~-4%-%date:~3,2%-%date:~0,2%_%time:~0,2%-%time:~3,2%
set datetime=%datetime: =0%
git commit -m "Update: %datetime%"

echo [INFO] Dang day code len GitHub...
:: Push len repository
git push -u origin main

if %errorlevel% neq 0 (
    echo [ERROR] Qua trinh push gap loi! Vui long kiem tra lai ket noi hoac Token.
) else (
    echo [SUCCESS] Da cap nhat du lieu len GitHub thanh cong.
)

pause