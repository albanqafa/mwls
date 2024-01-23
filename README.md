# Make Windows Less Shitty

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

C:\ProgramData\chocolatey\bin\RefreshEnv.cmd

mklink /D C:\bin C:\ProgramData\chocolatey\bin

choco install -y clink busybox git ntop winfetch nmap
```
