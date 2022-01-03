@echo off
@setlocal enableextensions
@cd /d "%~dp0"
echo ------------------------------------------
for /f %%i in ('dir /b *.pem') do set PEM=%%i
echo %PEM%
echo ------------------------------------------
certutil.exe -addstore root %cd%\%PEM%
echo.
echo ####################################################################################
echo. 
echo ------------------------------------------
for /f %%i in ('dir /b *.der') do set DER=%%i
echo %DER%
echo ------------------------------------------
certutil.exe -addstore root %cd%\%DER%
PAUSE