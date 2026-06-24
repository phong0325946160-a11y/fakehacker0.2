@echo off
color 0a
title KERNEL INJECTION MATRIX - MANUAL OVERRIDE
cls

echo ====================================================================
echo     [ SYSTEM LOCKDOWN DETECTED - MANUAL INPUT REQUIRED ]
echo     Vui long go ma lenh thu cong de tiep tuc xam nhap...
echo ====================================================================
echo.

:: Phần dạo đầu, mỗi lần bạn gõ 1 phím nó sẽ hiện 1 dòng
pause >nul
echo root@kali:~# cd /var/sec/database/
pause >nul
echo root@kali:/var/sec/database# ./bypass_module.sh
pause >nul
echo [INFO] Initiating connection to Mainframe...
pause >nul
echo [INFO] Connection established. IP: 192.168.%random:~0,2%.%random:~0,2%
pause >nul
echo [INFO] Bypassing 2FA authentication...
pause >nul
echo [SUCCESS] Access Granted! 
pause >nul
echo.
pause >nul
echo root@kali:~# start_data_extraction -all
pause >nul
echo [!] DOWNLOADING ENCRYPTED PACKETS...
echo.

:: Vòng lặp vô tận: Từ đây bạn có thể gõ cả ngày không hết code
:typing_loop
pause >nul
echo [+] Injecting memory address 0x00%random%A7F... [OK]
pause >nul
echo [-] Decrypting firewall protocol %random:~0,2%... [SUCCESS]
pause >nul
echo [*] Extracting packet data: %random%%random%%random%%random%
pause >nul
echo [^>] Routing through proxy node: 10.%random:~0,2%.%random:~0,2%.4
goto typing_loop