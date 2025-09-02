@echo off
title JunkEraser by 0x🗑️
color 0a

echo ================================================
echo         JunkEraser - Windows Cleaner by 0x
echo ================================================
echo.

:: Admin rights check
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ❌ Please run this script as Administrator!
    pause
    exit
)

:: Folder list (har path alag-alag loop me hoga, no multiline issues)
for %%i in (
    "%temp%"
    "C:\Windows\Temp"
    "C:\Windows\Prefetch"
    "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache"
    "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\History"
    "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer"
    "C:\Users\%USERNAME%\AppData\Local\CrashDumps"
    "C:\Windows\SoftwareDistribution\Download"
) do (
    echo 🧹 Checking: %%i
    if exist %%i (
        echo 🚀 Deleting files inside %%i ...
        del /f /s /q "%%i\*.*" >nul 2>&1
        echo ✅ Done: %%i
    ) else (
        echo ⚠️ Folder not found: %%i
    )
    echo.
)

echo ================================================
echo   🎉 0x Junk Cleaning Completed Successfully!
echo ================================================
pause
