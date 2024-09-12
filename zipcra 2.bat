@echo off
msg * This Tool is for Eucation Purposes Only the Developer Don't Responsble for any Damage if you don't want this close the program
msg * This is the last warning This Tool is for Eucation Purposes Only the Developer Don't Responsble for Any Damage
pause; 
mode 1000
color 0a
title zipcra by yahia mohmed loay
if not  exist "c:\program files\7-zip"  (
echo 7-zip is not Installed
  pause;
  exit
)
msg * if you have any another wordlist you can open zipra2 and enter your wordlist (because there is wordlist installed in the program
pause;
set /p archive="enter archive: "
set /p wordlist="enter wordlist: "
if not exist "%C:\Users\yahia\Desktop\zipcra\list.txt"  (
 echo Wordlist Not Found
 pause;
 exit
 
)

for /f %%a in (C:\Users\yahia\Desktop\zipcra\list.txt) do (
   set pass=%%a
   call :attempt 
)

pause;
exit

:attempt
"C:\Program Files\7-zip\7z.exe" x -p%pass% "%archive%" -o"Cracked" -y
echo Cracking...
if /I %errorlevel% EQU 0 (
  echo Password Found!: %pass%
  pause;
  exit
)
