@echo off
echo Acesso remoto - Funciona apenas se o usuario estiver logado!
echo ...
set /p server=Maquina/server destino:%server%
set /p admin=Usuario administrador para acesso remoto:%admin%

runas /user:%admin%@contoso.com "cmd.exe /k query session /server:%server% & cd /D %~dp0 & more +9 acessoremoto.bat >temp.bat & call temp.bat"
exit

set /p id=ID do usuario:%id%
cls
@echo off
set /p srv=Confirme maquina/server destino:%srv%

echo Aguarde o usuario aceitar o acesso
mstsc /shadow:%id% /control /noConsentPrompt login /v:%srv%

cd /D %~dp0 & del temp.bat

