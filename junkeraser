@echo off
title Junk Eraser by 0x
color 0a

echo ================================================
echo       🚀 Junk Eraser by 0x 🚀
echo ================================================
echo.

:: Run as Admin check
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo ❌ Please run this script as Administrator!
    pause
    exit
)

:: Folders list
set folders=%temp% "C:\Windows\Temp" "C:\Windows\Prefetch" ^
"%LocalAppData%\Microsoft\Windows\INetCache" ^
"%LocalAppData%\Microsoft\Windows\History" ^
"%LocalAppData%\Microsoft\Windows\Explorer" ^
"%LocalAppData%\CrashDumps" ^
"C:\Windows\SoftwareDistribution\Download"

for %%i in (%folders%) do (
    echo 🧹 Cleaning: %%i
    if exist "%%i" (
        del /f /s /q "%%i\*.*" >nul 2>&1
        rd /s /q "%%i" >nul 2>&1
        mkdir "%%i" >nul 2>&1
        echo ✅ Done: %%i
    ) else (
        echo ⚠️ Skip (not found): %%i
    )
)

echo.
echo ================================================
echo     🎉 0x Cleaning Completed Safely! 0x 🎉
echo ================================================
pause
exit
