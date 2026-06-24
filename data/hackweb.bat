@echo off
color 0a
title LOGICAL EXPLOIT ENGINE v0.1 - MULTI-THREADING ACTIVE
cls

echo ====================================================================
echo        WEB EXPLOIT CONTROL INTERFACE v0.1 (TARGET LOCKED)
echo ====================================================================
set /p target="[TARGET] Nhap URL hoac IP trang web de khoi chay payload: "
echo.
echo [%time%] [INFO] Injecting SQLi payload into target architecture...
ping localhost -n 3 >nul
echo [%time%] [INFO] Vulnerability confirmed. Bypassing Web Application Firewall (WAF)...
ping localhost -n 4 >nul
echo [%time%] [SUCCESS] Database session established successfully!
echo --------------------------------------------------------------------
echo [%time%] [SESSION] Connected to DBMS: MySQL 8.0.25-ubuntu
echo [%time%] [SESSION] Current User: admin_db@localhost
echo [%time%] [SESSION] Current DB  : web_production_db
echo --------------------------------------------------------------------
ping localhost -n 3 >nul

:: GIAI ĐOẠN 1: DÒ TÌM CÁC BẢNG DỮ LIỆU (Chạy chậm từng bảng một)
echo [%time%] [PHASE 1] ENUMERATING DATABASE SCHEMAS AND TABLES...
ping localhost -n 2 >nul
set "t1=users_metadata" & set "t2=system_logs" & set "t3=transactions_backup" & set "t4=admin_credentials" & set "t5=api_keys"

echo [%time%] [FETCHING] Extracting structure: %t1%... [OK]
ping localhost -n 2 >nul
echo [%time%] [FETCHING] Extracting structure: %t2%... [OK]
ping localhost -n 2 >nul
echo [%time%] [FETCHING] Extracting structure: %t3%... [OK]
ping localhost -n 3 >nul
echo [%time%] [FETCHING] Extracting structure: %t4%... [FOUND TARGET]
ping localhost -n 2 >nul
echo [%time%] [FETCHING] Extracting structure: %t5%... [OK]
ping localhost -n 2 >nul
echo.
echo [%time%] [INFO] Selecting 'admin_credentials' for remote data dump...
echo --------------------------------------------------------------------
ping localhost -n 4 >nul

:: GIAI ĐOẠN 2: HÚT DỮ LIỆU & GIẢI MÃ HASH
echo [%time%] [PHASE 2] DUMPING TABLE ROWS: admin_credentials
ping localhost -n 2 >nul
echo +----+-------------------+----------------------------------+
echo ^| ID ^| USERNAME          ^| PASSWORD HASH (MD5)              ^|
echo +----+-------------------+----------------------------------+
echo ^| 1  ^| super_admin       ^| 21232f297a57a5a743894a0e4a801fc3 ^|
echo ^| 2  ^| tech_support_vnm  ^| d41d8cd98f00b204e9800998ecf8427e ^|
echo +----+-------------------+----------------------------------+
echo.
call :type "[%time%] [DECRYPT] Initiating GPU-accelerated MD5 hash decryption..." & echo.
:: Đoạn này dừng hẳn 5 giây để giả vờ như máy đang căng sức ra giải mã
ping localhost -n 6 >nul

color 0e
echo [%time%] [SUCCESS] Hash 21232f297a57a5a743894a0e4a801fc3 decrypted!
echo           [-] PLAIN TEXT PASSWORD FOUND: Admin@Root2026_Sec
color 0a
echo --------------------------------------------------------------------
ping localhost -n 4 >nul

:: GIAI ĐOẠN 3: TẢI TỆP TIN VỚI THANH CHẠY SIÊU CHẬM (Từng 1% hoặc 2%)
echo [%time%] [PHASE 3] EXTRACTING SERVER CONFIGURATION FILES...
ping localhost -n 2 >nul

set /a percent=0
:download_progress
:: Mỗi bước chỉ tăng 2% hoặc 3% để kéo dài thời gian
set /a percent+=3
if %percent% GTR 100 set /a percent=100

echo [%time%] [DOWNLOAD] Pulling /etc/nginx/nginx.conf ... %percent%%%

:: Tạo hiệu ứng "nghẽn mạng giả lập": Đến 45% và 88% sẽ bị khựng lại lâu hơn
if %percent%==45 (
    echo [%time%] [WARNING] Connection throttled by target IDS. Retrying...
    ping localhost -n 4 >nul
)
if %percent%==87 (
    echo [%time%] [INFO] Packet fragmentation detected. Reassembling...
    ping localhost -n 4 >nul
)

ping localhost -n 2 >nul
if %percent% LSS 100 goto download_progress

:: KẾT THÚC CÓ ĐIỂM NHẤN
color 0c
echo --------------------------------------------------------------------
echo [%time%] [SYSTEM ALERT] REMOTE ACCESS LEVEL 5 GRANTED.
echo [%time%] [SYSTEM ALERT] SHELL ACCESS ACTIVE: Type 'exit' to terminate.
echo ====================================================================
color 0a
echo.
echo root@server_target:~# 
set /p fake_cmd=""
echo [%time%] [EXEC] Executing command: %fake_cmd%...
ping localhost -n 3 >nul
echo [ERROR] Session terminated by remote host (Timeout).
echo.
echo Nhan phim bat ky de dong console an toan...
pause >nul
exit

:type
:: Hàm tạo hiệu ứng gõ chữ rà rà cho chuyên nghiệp
set "vbs=%temp%\t.vbs"
echo Set o=CreateObject("WScript.Shell"):For i=1 To Len(WScript.Arguments(0)):WScript.StdOut.Write Mid(WScript.Arguments(0),i,1):WScript.Sleep 40:Next > "%vbs%"
cscript //nologo "%vbs%" "%~1"
del "%vbs%"
goto :eof