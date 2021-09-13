@echo off

Net stop Spooler /y

timeout 5

reg delete HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Printers /f
reg delete HKEY_CURRENT_USER\Printers\Connections /f

takeown /A /R /D Y /F C:\Windows\System32\spool\drivers\x64\3\
icacls C:\Windows\System32\spool\drivers\x64\3\ /grant administradores:F /T /C
rmdir /q /s C:\Windows\System32\spool\drivers\x64\3\
md C:\Windows\System32\spool\drivers\x64\3\

takeown /A /R /D Y /F C:\Windows\System32\spool\drivers\x64\PCC\
icacls C:\Windows\System32\spool\drivers\x64\PCC\ /grant administradores:F /T /C
rmdir /q /s C:\Windows\System32\spool\drivers\x64\PCC\
md C:\Windows\System32\spool\drivers\x64\PCC\

takeown /A /R /D Y /F C:\Windows\System32\spool\drivers\W32X86\
icacls C:\Windows\System32\spool\drivers\W32X86\ /grant administradores:F /T /C
rmdir /q /s C:\Windows\System32\spool\drivers\W32X86\
md C:\Windows\System32\spool\drivers\W32X86\

takeown /A /R /D Y /F C:\Windows\System32\spool\drivers\IA64\
icacls C:\Windows\System32\spool\drivers\IA64\ /grant administradores:F /T /C
rmdir /q /s C:\Windows\System32\spool\drivers\IA64\
md C:\Windows\System32\spool\drivers\IA64\

takeown /A /R /D Y /F C:\Windows\System32\spool\SERVERS\
icacls C:\Windows\System32\spool\SERVERS\ /grant administradores:F /T /C
rmdir /q /s C:\Windows\System32\spool\SERVERS\
md C:\Windows\System32\spool\SERVERS\

timeout 5

Net start Spooler

timeout 5

pause