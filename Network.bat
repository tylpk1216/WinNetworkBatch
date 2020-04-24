@echo off

echo 1. Use LAN network.
echo 2. Use WIFI network.
echo 3. Disable All interfaces.
echo.

set /p ID=Your choice :

IF "%ID%" == "1" (
    goto C1
)

IF "%ID%" == "2" (
    goto C2
)

IF "%ID%" == "3" (
    goto C3
)

goto END

:C1
netsh interface set interface name="乙太網路" admin=ENABLED
netsh interface set interface name="Wi-Fi" admin=DISABLED
goto END    
    
    
:C2
netsh interface set interface name="乙太網路" admin=DISABLED
netsh interface set interface name="Wi-Fi" admin=ENABLED
goto END

:C3
netsh interface set interface name="乙太網路" admin=DISABLED
netsh interface set interface name="Wi-Fi" admin=DISABLED
goto END

:END
pause