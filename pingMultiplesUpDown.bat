@echo off
for /f "delims=, tokens=1*" %%a in (ping.txt) do (
ping %%a|find "TTL">nul
if not errorlevel 1 (echo %%a : UP && echo %%a : UP>>HostOffline.txt) else (
echo %%a : DOWN && echo %%a : DOWN>>HostOffline.txt))

timeout /t 5

pause