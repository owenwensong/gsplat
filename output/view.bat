@ECHO OFF

SET errmsg=unknown error

if "%~1" == "" (
    SET errmsg=incorrect usage, drag target into this script
    GOTO ERREND
)

"%~dp0\..\viewers\bin\SIBR_gaussianViewer_app.exe" -m "%~1"
exit /b 0

:ERREND
echo %errmsg%
pause
exit /b 1