@echo off

for /f %%G in (reboot.txt) do (

shutdown -r -t 00 -f -m \\%%G

)

timeout /t 5

pause