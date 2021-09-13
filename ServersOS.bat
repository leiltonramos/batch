@echo off

set newname=%random%

cd /D "%~dp0"
for /f "delims=" %%x in ('date/t') do set date=%%x
for /f "delims=" %%x in ('time/t') do set time=%%x
echo SERVERS OS %date%%time%>Servers_OS.txt

echo.>> Servers_OS.txt
echo server01 >> Servers_OS.txt
systeminfo /s server01|findstr /L "Server" >> Servers_OS.txt
echo.>> Servers_OS.txt
echo server02 >> Servers_OS.txt
systeminfo /s server02|findstr /L "Server" >> Servers_OS.txt
echo.>> Servers_OS.txt
echo server03 >> Servers_OS.txt
systeminfo /s server03|findstr /L "Server" >> Servers_OS.txt
echo.>> Servers_OS.txt