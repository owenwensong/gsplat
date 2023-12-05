@ECHO OFF

SET errmsg=unknown error

if "%~1" == "" (
    SET errmsg=incorrect usage, drag target into this script
    GOTO ERREND
)

cd "%~1"
md "%~dp1\cropped"
magick mogrify -path "%~dp1\cropped" -format png -crop 1456x672+0+0 +repage *.png

pause
exit /b 0

:ERREND
echo %errmsg%
pause
exit /b 1
