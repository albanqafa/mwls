@echo off
setlocal enabledelayedexpansion

if "%~1"=="" (
    echo Usage: sudo command
    exit /b
)

set "originalParams=%*"
set "params="

REM Process each argument
for %%i in (%originalParams%) do (
    set "param=%%~i"
    
    REM Convert Unix-style path to Windows-style if necessary
    if "!param:~0,1!"=="/" (
        REM Assuming C: as the root drive for conversion
        set "param=C:!param!"
    )
    
    REM Reconstruct the parameters
    set "params=!params! !param!"
)

REM Trim leading space
set "params=!params:~1!"

REM Call the VBS script with the processed parameters
cscript //nologo C:\ProgramData\chocolatey\bin\elevate.vbs "!params!"
endlocal
