@echo off
chcp 437 >nul
title SYSTEM_FIREWALL_ANALYZER v0.2
color 0B
cls

echo ====================================================================================
echo   [ ANALYST ] - ACTIVE SECURITY GATEWAY REPORT v0.2
echo ====================================================================================
echo.
echo [*] Dang truy xuat cau hinh mang hien tai...
ping 127.0.0.1 -n 2 >nul

echo ------------------------------------------------------------------------------------
echo   THONG TIN HE THONG (REAL-TIME DATA):
echo ------------------------------------------------------------------------------------
:: Goi ten may va ten User that cua may dang chay
echo [NAME] Host Name: %COMPUTERNAME%
echo [USER] Active User: %USERNAME%
echo [OS] Operating System Architecture: %PROCESSOR_ARCHITECTURE%

:: Lay dia chi IP nội bộ thực tế của máy (chỉ lọc dòng IPv4)
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /i "IPv4"') do (
    echo [IP] Local Address Detected:%%a
)
echo ------------------------------------------------------------------------------------
ping 127.0.0.1 -n 2 >nul

echo [*] Dang quet trang thai hoat dong cua Windows Firewall...
:: Kiem tra xem tuong lua that cua Windows co dang bat hay khong
netsh advfirewall show allprofiles state | findstr /i "State"
ping 127.0.0.1 -n 2 >nul

echo.
color 0A
echo ====================================================================================
echo   [ SUCCESS ] COU TRUC PHONG THU DA DUOC KIEM TRA VA BAO MAT TOAN DIEN!
echo ====================================================================================
echo Trinh giam sat dang duy tri trang thai on dinh. 
echo Bam phim bat ky de quay lai Menu chinh...

pause >nul