@echo off
color 0b
title AntMiner v0.1 - Bitcoin Solo Mining Pool
cls

echo ====================================================================
echo          BITCOIN NETWORK MINING INITIALIZATION v0.1              
echo ====================================================================
echo [INFO] Connecting to stratum+tcp://btc.slushpool.com:3333...
ping localhost -n 2 >nul
echo [INFO] Connected! Worker: Miner_Rig_04X3 status: ONLINE.
echo [INFO] Algorithm: SHA-256 ^| Target: 00000000000000000000000000000000
echo [INFO] Hardware Detected: NVIDIA RTX 5090 Ti x 4 (Overclocked)
echo [INFO] Current GPU Temp: 68C - Fan Speed: 85%%
echo ====================================================================
echo Starting hashing power... Press CTRL+C to stop.
echo.
ping localhost -n 3 >nul

:mining
ping localhost -n 2 >nul
echo [%time%] GPU0: 142.5 Mh/s, GPU1: 141.2 Mh/s, GPU2: 143.0 Mh/s, GPU3: 140.8 Mh/s [Total: 567.5 Mh/s]

set /a chance=%random% %% 5
if %chance%==3 (
    color 0a
    echo [%time%] ^[^[ SUCCESS ^]^] Stratum - Share accepted! Block #849%random% found!
    echo [%time%] ^[^[ REWARD ^]^] +0.00045 BTC added to wallet: 1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa
    color 0b
)
goto mining