@echo off
:start
set /p dir=Please enter the save path:
set dir=%dir:/=\%
pushd %dir%
if /i not %dir%==%cd% goto :start
echo save path:%cd%
:download
set /p input=Please enter the video url:
set input=%input:&=^^^&%
youtube-dl -F %input%
if errorlevel 1 goto :download
set /p code=Please enter the video number:
youtube-dl -f %code% %input%
goto :download