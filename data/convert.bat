@ECHO OFF

SET errmsg=unknown error

if "%~1" == "" (
    SET errmsg=incorrect usage, drag target into this script
    GOTO ERREND
)

cd "%~dp0\..\"
SET MASKFILEARG= 
if exist "%~1\mask.png" SET MASKFILEARG=--mask %~1\mask.png
CALL C:\ProgramData\Anaconda3\Scripts\activate.bat C:\ProgramData\Anaconda3
CALL activate gaussian_splatting
python convert.py -s "%~1" %MASKFILEARG%

pause
exit /b 0

:ERREND
echo %errmsg%
pause
exit /b 1
