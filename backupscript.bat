@echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set date=%%c-%%a-%%b)

For /f "tokens=1-4 delims=:." %%a in ('echo %time%') do (set time=%%a%%b%%c%%d)

set backupname=%1 %date% %time%.sql
echo Running backup: %backupname%

cd <route to "bin" directory on mysql server default directory>

mysqldump  --routines --databases -u <userhere> -p<passwordhere> <databasenamehere> > <backupdestroutehere>"<databasenamehere>%backupname%"

echo on
echo Deleting old databases

forfiles /p <databasedestroutehere> /s /m *.* /d -3 /c "cmd /c del @file : date >= 3days"

echo Backup finished :D

REM pause
