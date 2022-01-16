@echo off
cls

:checkAdmin
echo test >> %systemroot%\bruh
if /i not exist "%systemroot%\bruh" (
	echo Please run this script as Administrator
	goto :end
)
del %systemroot%\bruh


:write
set write=false
set hostfile=%systemroot%\system32\drivers\etc\hosts
findstr /I global1.bh3.com %hostfile% || set write=true
if %write% == true (
	echo # For Mainland China Version >> %hostfile%
	echo 52.187.76.79	global1.bh3.com >> %hostfile%
)

set write=false
set hostfile=%systemroot%\system32\drivers\etc\hosts
findstr /I global2.bh3.com %hostfile% || set write=true
if %write% == true (
	echo 52.187.76.79	global2.bh3.com >> %hostfile%
)

set write=false
set hostfile=%systemroot%\system32\drivers\etc\hosts
findstr /I global01.os.honkaiimpact3.com %hostfile% || set write=true
if %write% == true (
	echo # For SEA Version >> %hostfile%
	echo 52.187.76.79	global01.os.honkaiimpact3.com >> %hostfile%
)

set write=false
set hostfile=%systemroot%\system32\drivers\etc\hosts
findstr /I global01.west.honkaiimpact3.com %hostfile% || set write=true
if %write% == true (
	echo # For Global Version >> %hostfile%
	echo 52.187.76.79	global01.west.honkaiimpact3.com >> %hostfile%
)

echo Hostname has been added. Please re-run your game.

:end
pause | echo Press any key to exit...