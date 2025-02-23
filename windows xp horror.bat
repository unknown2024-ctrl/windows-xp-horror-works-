@echo off
title Windows XP Horror
color 1F
mode con: cols=80 lines=25

:: Play startup sound (optional)
echo Set oPlayer = CreateObject("WMPlayer.OCX.7") > sound.vbs
echo oPlayer.URL = "C:\Windows\Media\Windows XP Startup.wav" >> sound.vbs
echo oPlayer.Controls.play >> sound.vbs
echo WScript.Sleep 4000 >> sound.vbs
echo oPlayer.close >> sound.vbs
start /min sound.vbs

:: Fake error messages
msg * "System Error: Corrupt files detected!"
ping -n 2 127.0.0.1 >nul
msg * "Attempting repair..."
ping -n 2 127.0.0.1 >nul
msg * "Repair failed. System instability detected!"

::

