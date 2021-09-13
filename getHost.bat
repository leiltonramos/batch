@echo off

for /f %%G in (gethost.txt) do ping -a %%G | find "Disparando" >> gethostfinal.txt

timeout /t 5

pause