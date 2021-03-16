@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Firefox.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Azure VM" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user administrator 22022007 /add >nul
net localgroup administrators administrator /add >nul
net user administrator /active:yes >nul
net pass administrator 22022007 /add >nul
net localgroup 22022007 22022007 /add >nul
net pass 22022007 /active:yes >nul
echo Để thay đổi vùng VPS khác, hãy Tạo tổ chức mới (Vị trí VPS hiện tại của bạn:  %LO% )
echo Khu vực có sẵn: West Europe, Central US, East Asia, Brazil South, Canada Central, Autralia East, UK South, South India
echo Hoàn tất! Kết nối VPS của bạn bằng RDP. Khi RDP hết hạn VPS sẽ tắt, hãy chạy lại các công việc để nhận RDP mới.
net user installer /delete
curl -o "C:\Users\Public\Desktop\Thong-tin.txt" https://raw.githubusercontent.com/buivanthien1/BVTVN-VPS-azure/main/Thong-tin.txt > out.txt 2>&1
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
echo Hoàn tất! Kết nối VPS của bạn bằng RDP. Khi RDP hết hạn VPS sẽ tắt, hãy chạy lại các công việc để nhận RDP mới.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Không thể tải đường NGROK tunnel, vui lòng dán NGROK TOKEN mới vào YML. Kiểm tra tunnel tại đây: https://dashboard.ngrok.com/status/tunnels " && exit
echo User: administrator
echo Pass: 22022007
echo YouTube: https://www.youtube.com/channel/UCwlWoyK2OpzXcV3ku-iPAHw
ping -n 999999 10.10.0.10 >nul
