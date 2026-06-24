@echo off
:lan_spread_fake
cls
title NETWORK_WORM_SIMULATOR v0.2
color 0a
echo ====================================================================================
echo   [ PROTOCOL ] - LAN NETWORK WORM PROPAGATION SCRIPT
echo ====================================================================================
echo.
echo [INFO] Dang xac dinh dai IP mang noi bo (Subnet Masking)...
ping 127.0.0.1 -n 2 >nul
echo [SUCCESS] Gateway detected: 192.168.1.1. Initializing scan...
echo ------------------------------------------------------------------------------------
ping 127.0.0.1 -n 2 >nul

:: Vong lap gia lap quet va phat tan sang 4 IP ngau nhien
set /a count=0
:loop_lan
set /a count+=1

:: Sinh so duoi IP ngau nhien tu 10 den 99
set /a ip_tail=%random:~-2% + 10

echo [%time%] [SCANNING] Checking node: 192.168.1.%ip_tail% ...
ping 127.0.0.1 -n 2 >nul
echo [%time%] [FOUND] Target active! Vulnerability: MS17-010 (EternalBlue)
echo [%time%] [SND_PAYLOAD] Sending IL0VEY0U core to 192.168.1.%ip_tail%...
ping 127.0.0.1 -n 1 >nul
echo [%time%] [SUCCESS] Remote execution triggered on 192.168.1.%ip_tail%.
echo ------------------------------------------------------------------------------------

if %count% lss 4 goto loop_lan

:: Buoc cuoi: Tha dung 1 file duy nhat ra Desktop cua minh lam bao cao
set "desktop_path=%USERPROFILE%\Desktop"
if not exist "%desktop_path%" set "desktop_path=%HOMEDRIVE%%HOMEPATH%\Desktop"

echo ======================================================= > "%desktop_path%\LAN_SPREAD_REPORT.txt"
echo   [REPORT] PROPAGATION COMPLETED SUCCESSFULLY v0.2 >> "%desktop_path%\LAN_SPREAD_REPORT.txt"
echo ======================================================= >> "%desktop_path%\LAN_SPREAD_REPORT.txt"
echo [+] Trang thai: Da hoan thanh phat tan trong mang noi bo. >> "%desktop_path%\LAN_SPREAD_REPORT.txt"
echo [+] Tong so thiet bi ghi nhan lây nhiem: %count% nodes. >> "%desktop_path%\LAN_SPREAD_REPORT.txt"

echo [COMPLETED] Qua trinh phat tan gia lap hoan tat!
echo [INFO] Da xuat bao cao ra Desktop: LAN_SPREAD_REPORT.txt
echo.
echo Bam phim bat ky de quay lai menu...
pause >nul
goto menu