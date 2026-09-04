@echo off
cd /d "%~dp0\ORIG_DATA_UNMASKED"

set dwebp_cmd=..\..\bin\dwebp.exe
set dwebp_option=

for %%a in ( *.webp ) do (
	%dwebp_cmd% %dwebp_option% "%%a" -o "%%~na.png"
)

pause