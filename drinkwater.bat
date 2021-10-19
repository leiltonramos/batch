rem for hide the batch, necessary download of nircmd.exe and paste in folder C:\Windows\System32

title drink water
nircmd.exe win hide ititle "drink water"

:loop
cls
start cmd /k echo DRINK WATER!
timeout /t 5
goto loop