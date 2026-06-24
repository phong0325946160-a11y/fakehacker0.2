@echo off
title PURGING TEMP CACHE
color 0A
cls

echo [!] WARNING: INITIALIZING DEEP TEMP PURGE PROTOCOL...
echo.
timeout /t 2 >nul

:: Xóa Temp của Người dùng
echo [+] XOA BO NHO DEM CUA NGUOI DUNG...
del /s /f /q %temp%\*.*
echo.
timeout /t 1 >nul
:: Xóa Temp của Hệ thống
echo [+] XOA BO NHO DEM CUA HE THONG...
del /s /f /q %systemroot%\Temp\*.*
echo.
timeout /t 1 >nul
echo.
echo =======================================================
echo DA XOA BO NHO DEM [THANH CONG]!
echo =======================================================
echo.
pause