rem pageant variables
SET pageant_path=C:\Program Files\PuTTY\pageant.exe
SET key_paths=C:\SSH\petermikaczo.key.ppk C:\SSH\corporate.key.ppk

rem openvpn
SET openvpn_path=C:\Program Files\OpenVPN\bin\openvpn-gui.exe

rem keepass
SET keepass_path=c:\Program Files\KeePass Password Safe 2\KeePass.exe

rem vscode
SET vscode_path=Microsoft.VisualStudioCode


@ECHO OFF
CLS
ECHO 1.Start all
ECHO 2.Pageant
ECHO 3.VSCode
ECHO 4.openVPN
ECHO 5.Keepass
ECHO 6.Microsoft Outlook
ECHO 7.Microsoft Teams
ECHO 8.Microsoft Office Onenote
ECHO.

CHOICE /T 5 /D 1 /C 12345678 /M "After 5sec Start all will be choosen. Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 8 GOTO onenote
IF ERRORLEVEL 7 GOTO Teams
IF ERRORLEVEL 6 GOTO Outlook
IF ERRORLEVEL 5 GOTO Keepass
IF ERRORLEVEL 4 GOTO openVPN
IF ERRORLEVEL 3 GOTO vscode
IF ERRORLEVEL 2 GOTO Pageant
IF ERRORLEVEL 1 GOTO Start_all

rem win10 apps --> https://www.windowscentral.com/how-launch-apps-automatically-during-startup-windows-10

:Start_all
call :Pageant
call :vscode
call :openVPN
call :Keepass
call :Outlook
call :Teams
call :onenote

:Pageant
start /b "" "%pageant_path%" %key_paths%
exit /b

:openVPN
start /b "" "%openvpn_path%"
exit /b

:Keepass
start /b "" "%keepass_path%"
exit /b

:Outlook
start /b "" "outlook"
exit /b

:Teams
explorer.exe shell:appsFolder\com.squirrel.Teams.Teams
exit /b

:onenote
explorer.exe shell:appsFolder\Microsoft.Office.ONENOTE.EXE.15
exit /b

:vscode
explorer.exe shell:appsFolder\"%vscode_path%"
exit /b