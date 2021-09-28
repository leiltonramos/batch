@echo off

for /f %%G in (ultravncMultiples.txt) do (

start cmd /c "C:\Program Files (x86)\uvnc bvba\UltraVNC\vncviewer.exe" -connect %%G -password XXXXXX -serverscale 2

)

timeout /t 5

pause