@echo off
REM Build the production site into the /public folder
echo Building Pack 300 site...
hugo --gc --minify
echo.
echo Done! Upload the contents of the /public folder to your web host.
