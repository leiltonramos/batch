@echo off

for /f %%G in (remoteUser.txt) do (

echo %%G>>remoteUserOut.txt & qwinsta /server:%%G | findstr Ativo>>remoteUserOut.txt

)

timeout /t 5

pause