@echo off
color 0a
title DDOS ATTACK VECTOR v0.2 - BOTNET SIMULATOR

echo.
echo ===================================================
echo   WARNING: DDOS SIMULATOR ENGAGED
echo   TARGET PROTOCOL: HTTP/HTTPS FLOOD - UDP BYPASS
echo ===================================================
echo.
timeout /t 2 >nul

:: Bước 1: Cho nhập mục tiêu để tăng độ thật
set /p target="[ENTER TARGET URL OR IP]: "
echo.
echo [RESOLVING TARGET]: %target% ...
timeout /t 2 >nul
echo [TARGET IP FOUND]: 104.244.42.1 (Redirecting via Proxy Chain)
echo.
timeout /t 1 >nul

:: Bước 2: Giả lập kết nối mạng lưới Botnet
echo [CONNECTING TO ZOMBIE NETWORKS]...
echo   [Cluster 1 - Asia]: [######....] 60%% CONNECTED
timeout /t 1 >nul
echo   [Cluster 2 - Europe]: [#########.] 90%% CONNECTED
timeout /t 1 >nul
echo   [Cluster 3 - US-East]: [##########] 100%% CONNECTED
echo [SYSTEM STATUS]: 14,500 BOTNET NODES READY.
echo.
timeout /t 2 >nul

echo [ATTACK COMMAND SENT] - FLOODING TARGET NOW...
echo Press CTRL+C to stop attack vector.
echo.
timeout /t 1 >nul

:: Bước 3: Vòng lặp bắn gói tin liên tục (Nhìn cực kỳ chóng mặt và nguy hiểm)
:attack_loop
echo Sending 64,000 requests to %target% - Response: 503 Service Unavailable (Botnet Node #%random%)
echo Packet flood weight: 1.2 Gbps - Packet loss: 0%% - Target Load: 99.8%%
echo [STATUS]: FLOODING VIA PROXY: 45.112.%random% ...
timeout /t 0 >nul
goto attack_loop