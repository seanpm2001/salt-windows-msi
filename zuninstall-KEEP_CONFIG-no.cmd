@echo off
:: Get the file name
for /f "delims=" %%a in ('dir /b wix.d\MinionMSI\bin\Release\*.msi')   do @set "msi=%%a"

@echo on

msiexec /x wix.d\MinionMSI\bin\Release\%msi% /qb! KEEP_CONFIG=0
dir /s /b \salt