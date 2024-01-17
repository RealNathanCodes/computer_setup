REM Run this as admin
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco install firefox -y
choco install google-chrome-x64 -y
choco install visualstudiocode -y -ia '/Tasks=desktopicon,addcontextmenufiles,addcontextmenufolders,addtopath'
choco install notepadplusplus.install -y
choco install opera -y
choco install fiddler4 -y
choco install git.install -y
choco install tortoisegit -y
choco install kdiff3 -y
choco install gitextensions -y
choco install nodejs.install -y
choco install git-credential-manager-for-windows -y
choco install windirstat -y
choco install libreoffice -y
choco install handbrake -y
choco install putty -y
choco install keepass -y
choco install keepass-keepasshttp -y
choco install wireshark -y
choco install gimp -y
choco install inkscape -y
pause