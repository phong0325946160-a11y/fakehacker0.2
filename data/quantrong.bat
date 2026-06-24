@echo off
color 0a
title GLOBAL DEFENSE OVERRIDE SYSTEM v9.9
cls

echo ====================================================================
echo        WARGAME INTERFACE - STRATEGIC WEAPONS CONTROL v0.1          
echo ====================================================================
echo.
echo     [1] Xam nhap mang luoi phong thu quan doi (Muc bao dong DEFCON-2)
echo     [2] Chan ba trinh tu phong ten lua tu ham chua
echo     [3] Mo phong qua tai vung loi (Nha may dien hat nhan)
echo     [4] Quay lai menu chinh
echo.
echo ====================================================================
echo.
set /p target="[SYS-ACCESS] Chon he thong muc tieu de can thiep: "

if "%target%"=="1" goto military
if "%target%"=="2" goto missile
if "%target%"=="3" goto nuclear
if "%target%"=="4" exit

echo [!] Command Override Failed.
ping localhost -n 2 >nul
goto wargame


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: [1] HACK HỆ THỐNG QUÂN ĐỘI
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:military
cls
color 0c
echo [%time%] [CONNECT] Dialing secure satellite uplink to Pentagon servers...
ping localhost -n 3 >nul
echo [%time%] [WARNING] Mainframe Firewall (AES-256) detected.
ping localhost -n 3 >nul
echo [%time%] [EXPLOIT] Injecting zero-day exploit into proxy gates...
ping localhost -n 4 >nul

set /a c=0
:mil_loop
set /a c+=1
echo [%time%] [BRUTE-FORCE] Root access token: 0x%random%A%random%F [DENIED]
if %c% geq 20 goto mil_win
goto mil_loop

:mil_win
color 0a
echo [%time%] [SUCCESS] ACCESS GRANTED. ROOT PRIVILEGES OBTAINED.
echo [%time%] [INFO] Downloading classified tactical data packets...
ping localhost -n 4 >nul
echo [FINISH] Operation completed. Data wiped from logs.
pause
goto wargame


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: [2] CAN THIỆP TÊN LỬA TẦM XA
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:missile
cls
color 0e
echo [%time%] [CONNECT] Scanning Silo-44 telemetry frequencies...
ping localhost -n 3 >nul
echo [%time%] [INTERCEPT] Synchronizing guidance system clock...
ping localhost -n 4 >nul
echo [%time%] [OVERRIDE] Overriding manual launch key restrictions...
ping localhost -n 3 >nul

:: Chạy chuỗi nạp tọa độ giả lập cực ngầu
set /a coord=0
:missile_loop
set /a coord+=5
echo [%time%] [GRID-SCAN] Re-routing guidance coordinates ... %coord%%%
ping localhost -n 1 >nul
if %coord% lss 100 goto missile_loop

color 0c
echo --------------------------------------------------------------------
echo [ALERT] MISSILE LAUNCH SEQUENCER DETACHED FROM MAIN COMMAND.
echo [ALERT] CONTROL REDIRECTED TO LOCAL TERMINAL. STATUS: READY
echo --------------------------------------------------------------------
color 0a
pause
goto wargame


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: [3] LÒ PHẢN ỨNG ĐIỆN HẠT NHÂN
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:nuclear
cls
color 0b
echo [%time%] [MONITOR] Accessing SCADA network - Reactor Core 3...
ping localhost -n 3 >nul
echo [%time%] [INFO] Cooling pumps status: ONLINE (Normal)
ping localhost -n 3 >nul
echo [%time%] [EXEC] Sending malicious firmware update to cooling valves...
ping localhost -n 4 >nul

color 0c
echo [%time%] [WARNING] COOLING PUMPS SHUTTING DOWN...
ping localhost -n 2 >nul

:: Mô phỏng nhiệt độ tăng cao, đẩy chữ chạy liên tục
set /a temp=280
:core_loop
set /a temp+=43
echo [%time%] [CRITICAL] Core Temperature rising: %temp%^oC (Max: 1200^oC)
ping localhost -n 1 >nul
if %temp% lss 1150 goto core_loop

echo --------------------------------------------------------------------
echo [EMERGENCY] THERMAL RUNAWAY IMMINENT. REACTOR CONTROL LOST.
echo --------------------------------------------------------------------
color 0a
pause
goto wargame

:wargame
:: Đoạn này dùng để gọi lại file menu.bat cũ của bạn nếu bạn đang chạy lồng
if exist menu.bat (call menu.bat) else (goto main_menu)