@echo off

for /f %%G in (caixas.txt) do (

taskkill /S %%G /u ldeoliveira /IM jusched.exe
taskkill /S %%G /u ldeoliveira /IM jucheck.exe
taskkill /S %%G /u ldeoliveira /IM javaw.exe
timeout /t 5

powershell Remove-item '\\%%G\c$\Program Files (x86)\Common Files\Java\Java Update' -Recurse -Force
powershell Remove-item '\\%%G\c$\Program Files\Common Files\Java\Java Update' -Recurse -Force
)

pause