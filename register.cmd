@echo off

set shell=HKCU\Software\Classes\Directory\Background\shell

if "%1"=="/U" goto remove
if "%1"=="/u" goto remove

:add

set consoletxt=Open in Console
set consoleico=%~dp0ico\console.ico
set consolecmd=\"%~dp0bin\console.exe\"

reg add "%shell%\x-console" /ve /d "%consoletxt%" /f
reg add "%shell%\x-console" /v Icon /d "%consoleico%" /f
reg add "%shell%\x-console\command" /ve /d "%consolecmd%" /f

set terminaltxt=Open in Terminal
set terminalico=%~dp0ico\terminal.ico
set terminalcmd=\"%~dp0bin\mintty.exe\" --WSL=\"Ubuntu\" --icon=\"%~dp0ico\terminal.ico\" --configdir=\"%~dp0etc\" -t \"Terminal\" -

reg add "%shell%\x-terminal" /ve /d "%terminaltxt%" /f
reg add "%shell%\x-terminal" /v Icon /d "%terminalico%" /f
reg add "%shell%\x-terminal\command" /ve /d "%terminalcmd%" /f

goto exit

:remove

reg delete "%shell%\x-console" /f
reg delete "%shell%\x-terminal" /f

:exit
