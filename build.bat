@setlocal enableextensions enabledelayedexpansion
@echo off

set title=''
set id=''

for /f "tokens=1,2 delims==" %%a in (%~dp0\settings.ini) do (
  if %%a==title set title=%%b
  if %%a==id set id=%%b
)

if %title%=='' @set /p title="Insert homebrew name: "
if %id%=='' @set /p id="Insert homebrew title ID (4 characters): "

if %title%=={{folder}} for /f %%q in ("%~dp0.") do set title=%%~nxq

echo.Name = %title%
echo.Title Id = %id%

vita-mksfoex -s TITLE_ID=%id%00001 "%title%" build\sce_sys\param.sfo
7z a -tzip "%title%.vpk" -r .\build\* .\build\eboot.bin 
