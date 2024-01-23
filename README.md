# Make Windows Suck Less

i dont know what Microsoft Windows Subsystem for Linux is and yes i came up with my acronym first

## elevated
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

C:\ProgramData\chocolatey\bin\RefreshEnv.cmd

mklink /D C:\bin C:\ProgramData\chocolatey\bin

mklink /D C:\etc C:\Windows\System32\drivers\etc

choco install -y clink busybox git ntop winfetch nmap nerd-fonts-Inconsolata

mklink C:\bin\bash.exe "C:\Program Files\Git\bin\bash.exe"

git clone https://github.com/albanqafa/mwsl.git
cd mwsl
copy *.bat C:\bin
copy *.vbs C:\bin
cd ..
#rmdir /S /Q mwsl

```

## non-elevated
```
move /Y settings.json %LocalAppData%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
```
