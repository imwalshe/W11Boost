@echo off

fsutil dirty query %SYSTEMDRIVE% >nul
if not %errorLevel% == 0 (
	echo ERROR: W11 LTSC 2022 replica: Right click on this file and select 'Run as administrator'
	Pause
)

cd %~dp0

powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process powershell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File "".\WL22.ps1""' -Verb RunAs}"
