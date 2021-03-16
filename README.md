# Azure_RDP

link: https://azure.microsoft.com/en-us/services/devops/



jobs:
- job: VPS Windows19 by thien Bui
  pool:
    vmImage: windows-latest
  steps:
   - checkout: none 
   - script: |
       echo ngrok authtoken "YOUR_AUTHTOKEN_HERE" > NGROK.bat
       curl -s -O https://raw.githubusercontent.com/eweiss2021/Azure_RDP/main/AzureNgrokAutoRegion.bat
       AzureNgrokAutoRegion.bat
     displayName: 'Chạy RDP Hack trên Azure Pipeline'
