@echo off
echo Remote access - Works only if the user is logged in!
echo ...
set /p server=Machine/server destiny:%server%
set /p admin=Administrator for the remote access:%admin%

runas /user:%admin%@contoso.com "cmd.exe /k query session /server:%server% & cd /D %~dp0 & more +9 acessoremoto.bat >temp.bat & call temp.bat"
exit

set /p id=User ID:%id%
cls
@echo off
set /p srv=Confirm machine/server destiny:%srv%

echo Wait for the user to accept the access
mstsc /shadow:%id% /control /noConsentPrompt login /v:%srv%

cd /D %~dp0 & del temp.bat

