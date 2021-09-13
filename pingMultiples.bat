@echo off

for /f %%G in (ping.txt) do (

runas /savecred /user:ldeoliveira@mercadocar.com.br "cmd.exe /k ping -t %%G"

)

timeout /t 5

pause