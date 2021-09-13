@echo off

for /F %%G in (copy.txt) do (
robocopy C:\Users\xxxxxx \\%%G\c$\Suport /E /R:1 /W:1
)

pause