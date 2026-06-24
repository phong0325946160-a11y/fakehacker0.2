@echo off
:main_menu
color 0a
title CYBER WEAPON CONTROL CENTER v0.1
cls

echo ====================================================================
echo               MAIN CONTROL HUB - SYSTEM OVERRIDE v0.1
echo ====================================================================
echo.                                                                   
echo     [1] KHOI CHAY: hackweb                                         
echo     [2] KHOI CHAY: webscan                                         
echo     [3] KHOI CHAY: hack                                            
echo     [4] KHOI CHAY: hacker                                          
echo     [5] KHOI CHAY: bitcoin                                         
echo     [6] KHOI CHAY: quantrong                                       
echo     [7] KHOI CHAY: hackdotuxa                                      
echo     [8] KHOI CHAY: dulieumat                                       
echo     [9] KHOI CHAY: chinhAI                                         
echo     [a] KHOI CHAY: sapweb                                          
echo     [b] KHOI CHAY: theodoi                                         
echo     [c] KHOI CHAY: taovirus
echo     [d] KHOI CHAY: chonghack
echo     [0] THOAT HE THONG (EXIT)                                      
echo.                                                                   
echo ====================================================================
echo.
set /p choice="[INPUT] Nhap so de kich hoat file tuong ung: "

if "%choice%"=="1" goto run_hackweb
if "%choice%"=="2" goto run_webscan
if "%choice%"=="3" goto run_hack
if "%choice%"=="4" goto run_hacker
if "%choice%"=="5" goto run_bitcoin
if "%choice%"=="6" goto run_quantrong
if "%choice%"=="7" goto run_hackdotuxa
if "%choice%"=="8" goto run_dulieumat
if "%choice%"=="9" goto run_chinhAI
if "%choice%"=="a" goto run_sapweb
if "%choice%"=="b" goto run_theodoi
if "%choice%"=="c" goto run_newvirus
if "%choice%"=="d" goto run_chonghack
if "%choice%"=="0" exit

echo [ERROR] Lua chon khong hop le. Quay lai sau 2 giay...
ping localhost -n 3 >nul
goto main_menu


:: --- PHẦN GỌI CÁC FILE .BAT CÓ SẴN TRONG THƯ MỤC ---

:run_hackweb
if exist %~dp0data\hackweb.bat (
    call %~dp0data\hackweb.bat
) else (
    echo [ERROR] Khong tim thay file hackweb.bat trong thu muc! & pause
)
goto main_menu

:run_webscan
if exist %~dp0data\webscan.bat (
    call %~dp0data\webscan.bat
) else (
    echo [ERROR] Khong tim thay file webscan.bat trong thu muc! & pause
)
goto main_menu

:run_hack
if exist %~dp0data\hack.bat (
    call %~dp0data\hack.bat
) else (
    echo [ERROR] Khong tim thay file hack.bat trong thu muc! & pause
)
goto main_menu

:run_hacker
if exist %~dp0data\hacker.bat (
    call %~dp0data\hacker.bat
) else (
    echo [ERROR] Khong tim thay file hacker.bat trong thu muc! & pause
)
goto main_menu

:run_bitcoin
if exist %~dp0data\bitcoin.bat (
    call %~dp0data\bitcoin.bat
) else (
    echo [ERROR] Khong tim thay file bitcoin.bat trong thu muc! & pause
)
goto main_menu

:run_quantrong
if exist %~dp0data\quantrong.bat (
    call %~dp0data\quantrong.bat
) else (
    echo [ERROR] Khong tim thay file quantrong.bat trong thu muc! & pause
)
goto main_menu

:run_hackdotuxa
if exist %~dp0data\hackdotuxa.bat (
    call %~dp0data\hackdotuxa.bat
) else (
    echo [ERROR] Khong tim thay file hackdotuxa.bat trong thu muc! & pause
)
goto main_menu

:run_dulieumat
if exist %~dp0data\dulieumat.bat (
    call %~dp0data\dulieumat.bat
) else (
    echo [ERROR] Khong tim thay file dulieumat.bat trong thu muc! & pause
)
goto main_menu

:run_chinhAI
if exist %~dp0data\chinhAI.bat (
    call %~dp0data\chinhAI.bat
) else (
    echo [ERROR] Khong tim thay file chinhAI.bat trong thu muc! & pause
)
goto main_menu

:run_sapweb
if exist %~dp0data\sapweb.bat (
    call %~dp0data\sapweb.bat
) else (
    echo [ERROR] Khong tim thay file sapweb.bat trong thu muc! & pause
)
goto main_menu

:run_theodoi
if exist %~dp0data\theodoi.bat (
    call %~dp0data\theodoi.bat
) else (
    echo [ERROR] Khong tim thay file theodoi.bat trong thu muc! & pause
)
goto main_menu

:run_newvirus
if exist %~dp0data\newvirus.bat (
    call %~dp0data\newvirus.bat
) else (
    echo [ERROR] Khong tim thay file newvirus.bat trong thu muc! & pause
)
goto main_menu

:run_chonghack
if exist %~dp0data\chonghack.bat (
    call %~dp0data\chonghack.bat
) else (
    echo [ERROR] Khong tim thay file chonghack.bat trong thu muc! & pause
)
goto main_menu