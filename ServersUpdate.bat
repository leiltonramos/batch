@echo off

echo execute with domain admin!

set newname=%random%

cd /D "%~dp0"
for /f "delims=" %%x in ('date/t') do set date=%%x
for /f "delims=" %%x in ('time/t') do set time=%%x
echo SERVERS UPDATES %date%%time%>Servers_Updates.csv

echo.>>Servers_Updates.csv
wmic /node:server01 qfe >> Servers_Updates.csv
echo.>>Servers_Updates.csv
wmic /node:server02 qfe >> Servers_Updates.csv
echo.>>Servers_Updates.csv
wmic /node:server03 qfe >> Servers_Updates.csv
echo.>>Servers_Updates.csv

ren "Servers_Updates.csv" Servers_Updates_%random%.csv