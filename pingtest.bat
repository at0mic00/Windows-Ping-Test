@echo off
SET dir=%cd%
SET rand=%random%
echo Hello! Welcome to at0mic's Pingtest!
echo Please wait until we fetch all your information and upload it to cloud which will give you your details!
echo ________________________________________________________________________________
echo Fetching IPConfig and Important Data.
mkdir logs
ipconfig /all >> logs/ipconfig.log
echo Done! Pinging to google.com now!
ping google.com -n 10 >> logs/ping.log
echo Done! Fetching Task List...
tasklist >> logs/tasklist.log
echo Ping Test Successfull! Final Process: Netstat! This might take long time.
netstat >> logs/netstat.log
echo Ping test is done! make sure you contact at0mic with correct ID!
cd logs
..\bin\7za.exe a ..\%rand% *.* > NUL
cd ..
bin\ncftpput.exe -u USER_ID -p USER_PASS SERVER_IP SERVER_DIR_TO_UPLOAD *.7z
echo %cd%

echo Tests has been successfully tested and uploaded to the cloud! Your ID: %rand%. Please contact at0mic for more information..
pause

