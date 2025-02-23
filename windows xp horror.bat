@echo off
title Administrator
color 4F
mode 1000
echo What is XP Horror?
timeout /t 2 /nobreak >nul

:: Fake error messages
msg * "System Error: Your files are corrupted!"
timeout /t 2 >nul
msg * "Administrator Warning: XP Horror Detected!"
timeout /t 2 >nul
msg * "Your computer will shut down in 10 seconds!"
timeout /t 2 >nul
msg * "Malware Found: Initiating Deletion..."
timeout /t 3 >nul

:: Move mouse randomly
echo Moving Mouse...
set /a x=%random% %% 500
set /a y=%random% %% 500
powershell -command "$wshell = New-Object -ComObject wscript.shell; $wshell.SendKeys('{NUMLOCK}')"
timeout /t 2 >nul

:: Change wallpaper temporarily
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\Windows\Web\Wallpaper\glitch.bmp /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

:: Fake screen glitch effect
echo Glitching screen...
start /min mspaint
timeout /t 3 >nul
taskkill /IM mspaint.exe /F

:: Fake restart effect (black screen)
echo Fake Restart...
powershell -command "$screen = New-Object -ComObject Shell.Application; $screen.ToggleDesktop()"
timeout /t 5 >nul
powershell -command "$screen.ToggleDesktop()"

:: Restore wallpaper
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\Windows\Web\Wallpaper\default.jpg /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
echo Everything is back to normal!
timeout /t 2 >nul
exit
