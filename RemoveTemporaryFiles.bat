*********START CODE************

@ECHO OFF
cls
echo "SCRIPT Para limpar arquivos temporarios do Windows"
pause
echo "Limpando..."

del /s /f /q "C:\Windows\Temp\*"
FOR /D %%p IN ("C:\Windows\Temp\*.*") DO rmdir "%%p" /s /q

del /s /f /q "%USERPROFILE%\AppData\Local\Temp\*"
FOR /D %%p IN ("%USERPROFILE%\AppData\Local\Temp\*.*") DO rmdir "%%p" /s /q

del /s /f /q "C:\Windows\Prefetch\*"
FOR /D %%p IN ("C:\Windows\Prefetch\*.*") DO rmdir "%%p" /s /q

del /s /f /q "C:\Windows\SoftwareDistribution\Download\*"
FOR /D %%p IN ("C:\Windows\SoftwareDistribution\Download\*.*") DO rmdir "%%p" /s /q

echo "Limpeza concluida!"
pause

*********END CODE************
