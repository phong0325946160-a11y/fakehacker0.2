@echo off
:main_menu
cls
color 0a
echo ====================================================================
echo             TRUNG TAM DIEU KHIEN XAM NHAP THIET BI v0.1
echo ====================================================================
echo.
echo [1] Xam nhap May tinh tu xa (PC)
echo [2] Xam nhap Dien thoai tu xa (Mobile)
echo [3] Thoat chuong trinh
echo.
set /p choice="[SYS] Chon tinh nang (1-3): "

if "%choice%"=="1" goto hack_pc
if "%choice%"=="2" goto hack_mobile
if "%choice%"=="3" exit
goto main_menu

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: TINH NANG 1: HACK MAY TINH (XU LY REALTIME TIME-BASED 50/50)
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:hack_pc
cls
color 0a
echo ====================================================================
echo             TIEN TRINH XAM NHAP MAY TINH TU XA
echo ====================================================================
echo.
set /p IP_TARGET="[SYS] Nhap Dia Chi IP May Tinh Muc Tieu: "
echo.
echo [%time%] [CONNECT] Dang thiet lap ket noi den IP: %IP_TARGET%...
ping localhost -n 3 >nul
echo [%time%] [SCAN] Dang quet cac cong mo (Port 445 SMB / Port 3389 RDP)...
ping localhost -n 3 >nul

:: MEOMEO: Lay 2 so cuoi cua mili giay he thong (Tu 00 den 99)
set "ms=%time:~-2%"
:: Chia lay du cho 2 de lay ket qua 0 hoac 1 thay doi theo tung phan tram giay
set /a chance=%ms% %% 2

if %chance%==0 goto pc_fail

:pc_success
echo [%time%] [EXPLOIT] Be khoa thanh cong quyen luu tru he thong!
ping localhost -n 2 >nul
color 0e
echo [%time%] [DOWNLOAD] Dang trich xuat du lieu o dia C:\ ... 100%%
ping localhost -n 2 >nul
color 0a
echo --------------------------------------------------------------------
echo [THANH CONG] DA CHIEM QUYEN KHIEM SOAT MAY TINH HOAN TOAN.
echo --------------------------------------------------------------------
echo Nhan phim bat ky de quay lai Menu...
pause >nul
goto main_menu

:pc_fail
color 0c
echo [%time%] [ALERT] Windows Defender da phat hien goi tin la!
ping localhost -n 2 >nul
echo [%time%] [ERROR] Ket noi bi ngat boi Firewall cua muc tieu.
echo --------------------------------------------------------------------
echo [THAT BAI] KHONG THE TRUY CAP MAY TINH. THIET BI AN TOAN.
echo --------------------------------------------------------------------
echo Nhan phim bat ky de thu lai...
pause >nul
goto main_menu


:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: TINH NANG 2: HACK DIEN THOAI (XU LY REALTIME TIME-BASED 50/50)
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:hack_mobile
cls
color 0a
echo ====================================================================
echo             TIEN TRINH XAM NHAP DIEN THOAI TU XA
echo ====================================================================
echo.
set /p PHONE_TARGET="[SYS] Nhap So Dien Thoai Muc Tieu: "
echo.
echo [%time%] [CONNECT] Dang thiet lap ket noi den thiet bi di dong...
ping localhost -n 3 >nul
echo [%time%] [SCAN] Dang quet he dieu hanh (Android/iOS Sandbox)...
ping localhost -n 3 >nul

:: Tuong tu, lay mili giay tai thoi diem nguoi dung chay den lenh nay
set "ms=%time:~-2%"
set /a chance=%ms% %% 2

if %chance%==0 goto mobile_fail

:mobile_success
color 0e
echo [%time%] [BYPASS] Vuot qua lop bao mat danh ba va tin nhan...
ping localhost -n 2 >nul
echo [%time%] [DOWNLOAD] Dang sao chep du lieu hinh anh ... 100%%
ping localhost -n 2 >nul
color 0a
echo --------------------------------------------------------------------
echo [THANH CONG] DA TRICH XUAT THANH CONG TOAN BO DU LIEU DIEN THOAI.
echo --------------------------------------------------------------------
echo Nhan phim bat ky de quay lai Menu...
pause >nul
goto main_menu

:mobile_fail
color 0c
echo [%time%] [WARN] He thong bao mat Knox / Apple Secure Enclave qua cao.
ping localhost -n 2 >nul
echo [%time%] [ERROR] Thiet bi tu dong tu choi yeu cau ket noi tu xa.
echo --------------------------------------------------------------------
echo [THAT BAI] TIEN TRINH BI HUY. DIEN THOAI MUC TIEU AN TOAN.
echo --------------------------------------------------------------------
echo Nhan phim bat ky de thu lai...
pause >nul
goto main_menu