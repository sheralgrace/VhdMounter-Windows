@echo off

:: This is going toss some errors if the application in question is using hard paths or registry calls to get path data. 
:: but it works pretty well with MOST python packages and visual studio code. As the venvs they make tend to hard code the path 
:: and this is a decent enough work around to not have to dick with it on a regular basis every time you want to move it around.
:: The intended use of this is for applications that need a consistant drive letter for path reasons and respond poorly to mlinks 
:: and the like. 

echo %USERPROFILE%

set USERDOMAIN=projects
set USERDOMAIN_ROAMINGPROFILE=projects
set USERNAME=projects
set USERPROFILE=%HOMEDRIVE%%HOMEPATH%


set HOMEDRIVE=Q:\
set HOMEPATH=Users\projects

set ALLUSERSPROFILE=%HOMEDRIVE%ProgramData
set APPDATA=%USERPROFILE%\AppData\Roaming

set CommonProgramFiles=%HOMEDRIVE%Program Files\Common Files
set CommonProgramFiles(x86)=%HOMEDRIVE%Program Files (x86)\Common Files
set CommonProgramW6432=%HOMEDRIVE%Program Files\Common Files




set ProgramData=%HOMEDRIVE%ProgramData
set ProgramFiles=%HOMEDRIVE%Program Files
set ProgramFiles(x86)=%HOMEDRIVE%Program Files (x86)
set ProgramW6432=%HOMEDRIVE%Program Files
set PUBLIC=%HOMEDRIVE%Users\Public

set ComSpec=%HOMEDRIVE%WINDOWS\system32\cmd.exe

set TEMP=%USERPROFILE%\AppData\Local\Temp
set TMP=%USERPROFILE%\AppData\Local\Temp

set VS140COMNTOOLS=


set Path=

set Path=C:\WINDOWS\system32;%path%
set Path=C:\WINDOWS;%path%

start thing.exe


