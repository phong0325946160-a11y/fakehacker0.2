@echo off
title FLUSH NETWORK CACHE
color 0A
cls
:: Câu lệnh thực tế
ipconfig /flushdns
:: câu lệnh chờ giả
echo.
echo =======================================================
echo               XOA BO NHO DEM CUA MANG
echo =======================================================
echo.
timeout /t 1 >nul
echo.
echo dang xoa bo nho dem
echo.
timeout /t 2 >nul
echo.
echo =======================================================
echo [thanh cong] da xoa bo nho dem cua ban
echo =======================================================
echo.
timeout /t 1 >nul
pause