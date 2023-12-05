@ECHO OFF

SET errmsg=unknown error

if "%~1" == "" (
    SET errmsg=incorrect usage, drag target into this script
    GOTO ERREND
)

cd "%~1"
md "%~dp1\masked"
for /r %%a in ("*_sens0*.png") do (
  echo %%~dpa
)
for /r %%a in ("*_sens1*.png") do (
  echo %%~dpa
)

pause
exit /b 0

:ERREND
echo %errmsg%
pause
exit /b 1
