@echo off

for /F %%G in (copia.txt) do (
robocopy C:\Users\xxxxxx \\%%G\c$\Suporte /E /R:1 /W:1
)

pause