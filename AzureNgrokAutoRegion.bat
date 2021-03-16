echo Author: Thien Bui
echo Website: Bvtvn.tk
echo YouTube: https://www.youtube.com/channel/UCwlWoyK2OpzXcV3ku-iPAHw
@echo off
title Azure-Auto-Region

echo Download all files...
curl --silent -O https://raw.githubusercontent.com/TheDarkMythos/Ngrok-Exe/master/ngrok.exe 
curl --silent -O https://raw.githubusercontent.com/buivanthien1/BVTVN-VPS-azure/main/NGROK-CHECK.bat


echo sao chép NGROK to System32...
copy ngrok.exe C:\Windows\System32 >nul

echo KẾT NỐI NGROK AUTH TOKEN...
start NGROK.bat >nul


echo Kiểm tra khu vực để tìm NGROK ...
curl -s ifconfig.me >ip.txt
set /p IP=<ip.txt
curl -s ipinfo.io/%IP%?token=5261be23f8710b >full.txt
type full.txt | jq -r .country >region.txt
type full.txt | jq -r .city >location.txt
set /p LO=<location.txt
set /p RE=<region.txt
if %RE%==US (start ngrok tcp 3389)
if %RE%==CA (start ngrok tcp 3389)
if %RE%==HK (start ngrok tcp --region ap 3389)
if %RE%==SG (start ngrok tcp --region ap 3389)
if %RE%==NL (start ngrok tcp --region eu 3389)
if %RE%==IE (start ngrok tcp --region eu 3389)
if %RE%==GB (start ngrok tcp --region eu 3389)
if %RE%==BR (start ngrok tcp --region sa 3389)
if %RE%==AU (start ngrok tcp --region au 3389)
if %RE%==IN (start ngrok tcp --region in 3389)


echo kết thúc!
NGROK-CHECK.bat
