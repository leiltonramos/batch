@echo off
rem Batch file for extract the last line of txt file

rem Ranges DHCP 

rem contoso - 10.1.1.0 ~ 10.1.1.100


set newname=%random%%random%
 
cd /D "%~dp0"
for /f "delims=" %%x in ('date/t') do set date=%%x
for /f "delims=" %%x in ('time/t') do set time=%%x
echo Report %date%%time%>out.txt

echo.>> out.txt
echo local >>out.txt
echo.>> out.txt
for /f "delims=" %%x in ('more +6 "\\10.1.1.0\c$\Program Files (x86)\teste.INI"') do set a=%%x
echo 10.1.1.0 %a%>>out.txt
for /f "delims=" %%x in ('more +6 "\\10.1.1.1\c$\Program Files (x86)\teste.INI"') do set b=%%x
echo 10.1.1.1 %b%>>out.txt

ren "out.txt" out_%newname%.txt
