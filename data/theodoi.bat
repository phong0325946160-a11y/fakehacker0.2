@echo off
chcp 437 >nul

title SYSTEM ACTIVITY MONITOR v0.1 - KEB_SOC_PROJECT
color 0A
mode con: cols=100 lines=30

:menu
cls
echo ====================================================================================
echo   [ CHINH-AI SECURITY MONITOR OS ] - TARGET CONSOLE
echo ====================================================================================
echo.
echo   [1] Quet thiet bi trong mang noi bo (LAN Node Scanner)
echo   [2] Giam sat hoat dong ung dung nguoi dung (User Activity Logger)
echo   [3] Thoat chuong trinh
echo.
echo ====================================================================================
set "choice="
set /p choice="Moi nhap lenh can quet (1-3): "

if "%choice%"=="1" goto lan_scan
if "%choice%"=="2" goto user_log
if "%choice%"=="3" exit
goto menu

:lan_scan
cls
echo [INFO] Dang khoi dong LAN Node Scanner...
:: Gia lap tre 1 giay bang ping (Khong can timeout)
ping 127.0.0.1 -n 2 >nul
echo [SUCCESS] Da thiet lap luong ghi hinh. Dang do quet cac thiet bi xung quanh...
echo ------------------------------------------------------------------------------------
netstat -an | findstr "ESTABLISHED LISTENING"
echo ------------------------------------------------------------------------------------
echo [ALERT] Phat hien 1 thiet bi la dang chia se tai nguyen RAM 8GB tai vung can can.
echo [STATUS] Dang dong bo du lieu ngam... [OK]
echo.
echo Bam phim bat ky de quay lai menu...
pause >nul
goto menu

:user_log
cls
echo [INFO] Dang bat dau lang nghe (Interceptive Logging Mode)...
ping 127.0.0.1 -n 2 >nul
echo [STATUS] Kich hoat che do quet tien trinh an...
echo.
query user 2>nul || echo [USER_SESSION] Active User: Administrator (Local Console)
echo.
echo ------------------------------------------------------------------------------------
echo [REAL-TIME ACTIVITY LOGS] (Bam Ctrl + C de dung dong bo):
echo ------------------------------------------------------------------------------------
set /a count=0
:loop_log
set /a count+=1
if %count%==1 echo [%time%] [INFO] User "Target_PC" opened browser tab: "Facebook - Chat".
if %count%==2 echo [%time%] [WARN] High data packet detected from port 443.
if %count%==3 echo [%time%] [SUCCESS] Injected keystroke buffer to memory allocation %random%.
if %count%==4 echo [%time%] [INFO] User focused window: "Discord - Guild Chat".
if %count%==5 (
    echo [%time%] [PROCESS] Active background tasks cloned:
    tasklist | findstr /I "svchost.exe explorer.exe cmd.exe" 2>nul
)
if %count%==6 echo [%time%] [INFO] Synchronizing sapweb.bat activity status... [COMPLETED]
if %count%==7 set /a count=0
:: Tre 2 giay giua cac dong log bang ping
ping 127.0.0.1 -n 3 >nul
goto loop_log
pause >nul