:: 2016-11-07  Markus Kramer   This file is a first attempt to run the salt-windows-msi project.
:: 2016-11-07  Markus Kramer   version required to clean. This is strange.

@echo off
:: Get the versions from salt/version.py
for /f "delims=" %%a in ('python versionDisplayOrInternal.py')   do @set "ddd=%%a"

@echo %0 :: DisplayVersion  = %ddd%
@echo.



"%ProgramFiles(x86)%"\MSBuild\12.0\Bin\msbuild.exe msbuild.proj /t:clean /p:Version=%ddd%
