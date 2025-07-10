@echo off
%~d0
CD %~dp0

echo.
echo Microsoft Visual C++ Todo en UNO
echo.
echo Microsoft Visual C++ 2005...
start /wait vcredist2005_x86.exe /q
start /wait vcredist2005_x64.exe /q

echo Microsoft Visual C++ 2008...
start /wait vcredist2008_x86.exe /qb
start /wait vcredist2008_x64.exe /qb

echo Microsoft Visual C++ 2010...
start /wait vcredist2010_x86.exe /passive /norestart
start /wait vcredist2010_x64.exe /passive /norestart

echo Microsoft Visual C++ 2012...
start /wait vcredist2012_x86.exe /passive /norestart
start /wait vcredist2012_x64.exe /passive /norestart

echo Microsoft Visual C++ 2013...
start /wait vcredist2013_x86.exe /passive /norestart
start /wait vcredist2013_x64.exe /passive /norestart

echo Microsoft Visual C++ 2015, 2017 ^& 2019...
start /wait vcredist2015_x86.exe /passive /norestart
start /wait vcredist2015_x64.exe /passive /norestart

echo Microsoft Visual C++ 2022
start /wait VC_redist.x86.exe /passive /norestart
start /wait VC_redist.x64.exe /passive /norestart

echo Requisitos Consola C++
echo Copiando archivos a C:\Windows\System32...
xcopy "%~dp0msvcp140d.dll" "C:\Windows\System32\" /Y
xcopy "%~dp0vcruntime140d.dll" "C:\Windows\System32\" /Y
xcopy "%~dp0vcruntime140_1d.dll" "C:\Windows\System32\" /Y
xcopy "%~dp0ucrtbased.dll" "C:\Windows\System32\" /Y

echo Requisitos Consola C++
xcopy "%~dp0msvcp140d.dll" "C:\Windows\SysWOW64\" /Y
xcopy "%~dp0vcruntime140d.dll" "C:\Windows\SysWOW64\" /Y
xcopy "%~dp0vcruntime140_1d.dll" "C:\Windows\SysWOW64\" /Y
xcopy "%~dp0ucrtbased.dll" "C:\Windows\SysWOW64\" /Y

echo.
echo Se Instalo Correctamente 
pause