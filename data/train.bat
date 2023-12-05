@ECHO OFF

SET errmsg=unknown error

if "%~1" == "" (
    SET errmsg=incorrect usage, drag target into this script
    GOTO ERREND
)

cd "%~dp0\..\"
CALL C:\ProgramData\Anaconda3\Scripts\activate.bat C:\ProgramData\Anaconda3
CALL activate gaussian_splatting
python train.py --save_iterations 7000 14000 --test_iterations 7000 14000 -s "%~1"

pause
exit /b 0

:ERREND
echo %errmsg%
pause
exit /b 1
