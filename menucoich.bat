@echo off
:main_menu
color 0a
title CYBER WEAPON CONTROL CENTER v0.1
cls

echo ====================================================================
echo               MAIN CONTROL HUB - SYSTEM OVERRIDE
echo ====================================================================
echo.                                                                   
echo     [1] KHOI CHAY: xoa bo nho dem                                         
echo     [2] KHOI CHAY: xoa bo nho dem mang
echo     [3] KHOI CHAY: sua loi win                                        
echo     [0] THOAT HE THONG (EXIT)                                      
echo.                                                                   
echo ====================================================================
echo.
set /p choice="[INPUT] Nhap so de kich hoat file tuong ung: "

if "%choice%"=="1" goto run_xbnhd
if "%choice%"=="2" goto run_xbnhdm
if "%choice%"=="3" goto run_chuawin
if "%choice%"=="0" exit

echo [ERROR] Lua chon khong hop le. Quay lai sau 2 giay...
ping localhost -n 3 >nul
goto main_menu


:: --- PHẦN GỌI CÁC FILE .BAT CÓ SẴN TRONG THƯ MỤC ---

:run_xbnhd
if exist %~dp0data\xbnhd.bat (
    call %~dp0data\xbnhd.bat
) else (
    echo [ERROR] Khong tim thay file xbnhd.bat trong thu muc! & pause
)
goto main_menu

:run_xbnhdm
if exist %~dp0data\xbnhdm.bat (
    call %~dp0data\xbnhdm.bat
) else (
    echo [ERROR] Khong tim thay file xbnhdm.bat trong thu muc! & pause
)
goto main_menu

:run_chuawin
if exist %~dp0data\chuawin.bat (
    call %~dp0data\chuawin.bat
) else (
    echo [ERROR] Khong tim thay file chuawin.bat trong thu muc! & pause
)
goto main_menu
