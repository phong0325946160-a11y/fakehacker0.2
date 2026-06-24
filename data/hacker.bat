@echo off
color 0c
title SYSTEM CRACKING TOOL v0.1 - RESTRICTED ACCESS
cls

echo ====================================================================
echo               ACCOUNT BRUTE-FORCE DECRYPTION MODULE                
echo ====================================================================
set /p target="[INPUT] Nhap ten tai khoan muc tieu (Email/Username): "
echo.
echo [INFO] Dang khoi tao cong cu be khoa...
ping localhost -n 2 >nul
echo [INFO] Dang tai danh sach 5,000,000 mat khau thong dung...
ping localhost -n 2 >nul
echo [INFO] Dang ket noi qua 5 lop Proxy an danh...
ping localhost -n 3 >nul
echo --------------------------------------------------------------------
echo ATTACK STARTED: TESTING PASSWORDS IN REAL-TIME...
echo --------------------------------------------------------------------
ping localhost -n 2 >nul

:: Vòng lặp chạy thử mật khẩu
set /a count=0
:crack_loop
set /a count+=1
echo [%time%] [TRYING] Pass_%random%X7 -> status: FAILED (Incorrect)
echo [%time%] [TRYING] Qwerty%random% -> status: FAILED (Incorrect)
echo [%time%] [TRYING] Admin@%random%  -> status: FAILED (Incorrect)

:: Chạy khoảng 100 vòng lặp chữ đỏ rồi sẽ chuyển sang màn thành công
if %count% geq 35 goto success
goto crack_loop

:success
echo.
echo --------------------------------------------------------------------
color 0a
echo [%time%] [!! SUCCESS !!] MATCH FOUND!
echo [%time%] [STATUS] Decryption completed 100%%.
echo --------------------------------------------------------------------
echo.
echo [+] TARGET ACCOUNT: %target%
echo [+] PASSWORD FOUND : %random%%random%
echo.
echo ====================================================================
echo Tat cua so nay de xoa dau vet truy cap.
pause >nul