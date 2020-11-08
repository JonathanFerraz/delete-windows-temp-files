echo off
cls
echo "SCRIPT Para limpar arquivos temporarios do Windows"
pause
echo "Limpando..."
del /q "C:\Windows\Temp\*"
FOR /D %%p IN ("C:\Windows\Temp\*.*") DO rmdir "%%p" /s /q

del /q "%USERPROFILE%\AppData\Local\Temp\*"
FOR /D %%p IN ("%USERPROFILE%\AppData\Local\Temp\*.*") DO rmdir "%%p" /s /q

del /q "C:\Windows\Prefetch\*"
FOR /D %%p IN ("C:\Windows\Prefetch\*.*") DO rmdir "%%p" /s /q
echo "Limpeza concluida!"
pause
