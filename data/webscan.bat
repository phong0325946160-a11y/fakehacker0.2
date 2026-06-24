@echo off
color 0a
title SATELLITE WEB SECURITY AUDIT TOOL v0.1
cls

:: Khởi tạo file script tạo tiếng gõ chữ
set "vbs=%temp%\typing.vbs"
echo Set objShell = CreateObject("WScript.Shell") > "%vbs%"
echo text = WScript.Arguments(0) >> "%vbs%"
echo For i = 1 To Len(text) >> "%vbs%"
echo     WScript.StdOut.Write Mid(text, i, 1) >> "%vbs%"
echo     WScript.Sleep 40 >> "%vbs%"
echo Next >> "%vbs%"

echo ====================================================================
echo        CORE VULNERABILITY ENGINE v0.1 - RESEARCH ONLY            
echo ====================================================================
set /p target="[CONFIG] Nhap URL muc tieu can kiem tra (eg. target.com): "
echo.
call :type "[%time%] [INFO] Connecting to remote host %target%..." & echo.
ping localhost -n 2 >nul
call :type "[%time%] [INFO] Connection established. Server detected: Apache/2.4.41 (Ubuntu)" & echo.
ping localhost -n 1 >nul
call :type "[%time%] [INFO] Loading 4,200 vulnerability signatures into memory..." & echo.
ping localhost -n 2 >nul
echo --------------------------------------------------------------------
call :type "[%time%] [START] INITIALIZING SECURITY AUDIT PROCESS..." & echo.
echo --------------------------------------------------------------------
ping localhost -n 2 >nul

:: PHASE 1: DIRECTORY ENUMERATION
call :type "[%time%] [PHASE 1] STARTING DIRECTORY TRAVERSAL BRUTE-FORCE..." & echo.
ping localhost -n 1 >nul

echo [%time%] [SEND] GET http://%target%/administrator -> HTTP/1.1 404 Not Found
ping localhost -n 1 >nul
echo [%time%] [SEND] GET http://%target%/wp-admin -> HTTP/1.1 404 Not Found
ping localhost -n 1 >nul

color 0e
echo [%time%] [MATCH] GET http://%target%/backup/ -> HTTP/1.1 200 OK (Directory Indexing Enabled)
color 0a
ping localhost -n 2 >nul

echo [%time%] [SEND] GET http://%target%/config.php.bak -> HTTP/1.1 404 Not Found
ping localhost -n 1 >nul

color 0e
echo [%time%] [MATCH] GET http://%target%/db_dump.sql -> HTTP/1.1 200 OK (Size: 14.2 MB)
color 0a
echo --------------------------------------------------------------------
ping localhost -n 2 >nul

:: PHASE 2: SQL INJECTION TESTING
call :type "[%time%] [PHASE 2] TESTING INJECTION PARAMETERS ON URL EXTENSIONS..." & echo.
ping localhost -n 1 >nul

echo [%time%] [PAYLOAD] http://%target%?id=1'  -> Response size: 4102 bytes
ping localhost -n 1 >nul
echo [%time%] [PAYLOAD] http://%target%?id=1"  -> Response size: 4102 bytes
ping localhost -n 1 >nul

call :type "[%time%] [ANALYZE] Parsing HTTP Response content for database exceptions..." & echo.
ping localhost -n 3 >nul

echo [%time%] [PAYLOAD] http://%target%?id=1' OR '1'='1 -- -> Response size: 12405 bytes
ping localhost -n 1 >nul

color 0c
echo [%time%] [ALERT] CRITICAL SIGNATURE DETECTED in HTML response!
echo         [SIGNATURE] "You have an error in your SQL syntax; check the manual..."
echo         [DATABASE ] MySQL Server / MariaDB Engine detected.
color 0a
echo --------------------------------------------------------------------
ping localhost -n 2 >nul

:: PHASE 3: REPORT GENERATION
color 0c
echo ====================================================================
echo                      VULNERABILITY REPORT SUMMARY                   
echo ====================================================================
echo  [+] TARGET HOST : %target%
echo  [+] DIRECTORIES : 02 Sensitive paths exposed (/backup/, /db_dump.sql)
echo  [+] INJECTIONS  : 01 High-Risk SQL Injection found via '?id=' parameter
echo  [+] EXPLOITABILITY: HIGH (Automated remote data extraction possible)
echo ====================================================================
color 0a
echo.
call :type "[FINISH] Audit completed. Audit log saved to %temp%\audit_%random%.log" & echo.
echo Nhan phim bat ky de xoa cookie va thoat chuong trinh an toan...
pause >nul
exit

:type
cscript //nologo "%vbs%" "%~1"
goto :eof