@echo off
setlocal enabledelayedexpansion
color 0a
title CONG CU CHUA BENH WINDOWS CHUYEN SAU v0.2
cls

:: ==========================================
:: BUOC 1: KIEM TRA QUYEN QUAN TRI (ADMIN)
:: ==========================================
echo [KHOI DONG] Dang kiem tra ong nghe bac si (Quyen Admin)...
net session >nul 2>&1
if %errorLevel% == 0 (
    echo [OK] Quyen Administrator hop le. Bat dau kham benh...
) else (
    echo [ERROR] Cong cu can quyen Admin de chua benh cho Windows.
    echo Vui long chuot phai vao file va chon 'Run as Administrator'.
    pause
    exit /b
)
ping localhost -n 2 >nul

:: ==========================================
:: BUOC 2: KHOI TAO SO KHAM BENH (LOG FILE)
:: ==========================================
set "LOG_DIR=%~dp0..\logs"
set "LOG_FILE=%LOG_DIR%\so_kham_benh_windows.log"

if not exist "%LOG_DIR%" (
    mkdir "%LOG_DIR%"
)

echo =================================================== >> "%LOG_FILE%"
echo LICHSU KHAM BENH NGAY: %date% LUC: %time% >> "%LOG_FILE%"
echo =================================================== >> "%LOG_FILE%"

:: ==========================================
:: BUOC 3: KHAM & VA LOI FILE HE THONG (SFC)
:: ==========================================
cls
echo ===================================================================
echo [BUOC 1/2] DANG SCAN VA VA LOI CAC TEP TIN COT LOI (SFC SCANNER)
echo ===================================================================
echo Trang thai: Dang tim cac file bi 'ton thuong' de va lai...
echo So kham benh dang duoc ghi tai: logs\so_kham_benh_windows.log
echo.

echo [START] Bat dau quet SFC luc %time% >> "%LOG_FILE%"
sfc /scannow
if %errorLevel% == 0 (
    echo [SUCCESS] File he thong hoan toan khoe manh. >> "%LOG_FILE%"
    set "SFC_STATUS=KHOE_MANH"
) else (
    echo [WARNING] Da phat hien file loi va can thiep va thanh cong! >> "%LOG_FILE%"
    set "SFC_STATUS=DA_CHUA_KHOI"
)

echo.
echo [OK] Buoc 1 xong. Chuyen sang thong thoang o cung sau 3 giay...
ping localhost -n 4 >nul

:: ==========================================
:: BUOC 4: DON DEP O CUNG CAP CAO (DISM)
:: ==========================================
cls
echo ===================================================================
echo [BUOC 2/2] DANG GIAI PHONG KHO LUU TRU THUA (DISM CLEANUP)
echo ===================================================================
echo Trang thai: Dang hut sach rác va toi uu bo nho dem Windows...
echo.

echo [START] Bat dau quet DISM luc %time% >> "%LOG_FILE%"
dism /online /cleanup-image /startcomponentcleanup
if %errorLevel% == 0 (
    echo [SUCCESS] Don dep kho luu tru thanh cong, may da nhe hon! >> "%LOG_FILE%"
    set "DISM_STATUS=THONG_THOANG"
) else (
    echo [ERROR] Windows tu choi don dep vi o cung dang ban. >> "%LOG_FILE%"
    set "DISM_STATUS=CHUA_XU_LY_DUOC"
)

:: ==========================================
:: BUOC 5: TONG KET SO KHAM BENH
:: ==========================================
cls
echo ===================================================================
echo               BAO CAO SK KET QUA CHUA BENH WINDOWS
echo ===================================================================
echo.
echo     + Tinh trang Tep tin Core:   [!SFC_STATUS!]
echo     + Tinh trang o cung He thong: [!DISM_STATUS!]
echo.
echo   =^> Moi thong tin chi tiet da duoc luu vao So Kham Benh (File Log).
echo ===================================================================
echo [HOAN THANH] Nhap phim bat ky de rut ong nghe (Quay lai menu)...

echo [END] Ket thuc kham benh luc %time% >> "%LOG_FILE%"
echo --------------------------------------------------- >> "%LOG_FILE%"
pause >nul
exit /b