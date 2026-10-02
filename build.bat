@echo off
setlocal
cd /d "%~dp0"

where nim >nul 2>nul
if errorlevel 1 (
	echo Error: Nim compiler was not found in PATH.
	exit /b 1
)

if not exist "main.nim" (
	echo Error: main.nim was not found in %CD%.
	exit /b 1
)

nim c -d:release --opt:speed --out:main.exe main.nim
exit /b %errorlevel%
