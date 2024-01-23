# Make Windows Less Shitty

## elevated
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

C:\ProgramData\chocolatey\bin\RefreshEnv.cmd

mklink /D C:\bin C:\ProgramData\chocolatey\bin

mklink /D C:\etc C:\Windows\System32\drivers\etc

choco install -y clink busybox git ntop winfetch nmap nerd-fonts-Inconsolata
```

## non-elevated
```
move /Y settings.json %LocalAppData%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
```
