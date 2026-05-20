@echo off


title MVC UBL Toolbox v1.0
color 09
echo -------------------------- MVC UBL TOOLBOX V1.0 --------------------------
echo Chip : Snapdragon 8 Elite - SM8750
echo by manvancongggg
echo Telegram : @manvancongggg
echo Donate for me : 
echo - Vietcombank : 1899918077 
echo Github : github.com/18xjul08
echo ---------------------------------------------------------------------------
echo Select device :
echo [1] Xiaomi 15
echo [2] Xiaomi 15 Pro
echo [3] Xiaomi 15 Ultra
echo [4] REDMI K90
echo [5] REDMI K80 Pro
echo [6] Xiaomi Pad 8 Pro
echo ----------------------------------------------------------------------------
echo DO NOT TURN OFF THE TOOL WHILE THE DEVICE IS FLASHING!!!
set /p choice=Select device [1,2,3,4,5,6]:

if "%choice%"=="1" goto dada
if "%choice%"=="2" goto haotian
if "%choice%"=="3" goto xuanyuan
if "%choice%"=="4" goto annibale
if "%choice%"=="5" goto miro
if "%choice%"=="6" goto piano


::XIAOMI 15 - DADA
:dada
echo Device selected : Xiaomi 15 - dada
echo Flashing ENG ROM....
cd /d "%~dp0bin\eng\dada"
call flash_all.bat
TIMEOUT /T 3
fastboot reboot bootloader
TIMEOUT /T 3
cd /d "%~dp0"
echo Flashing unlock....
fastboot flash partition:4 "%~dp0bin\gpt\1\gpt_both4.bin"
fastboot boot "%~dp0bin\gpt\1\boot.img"
echo Your device will display a white screen; press and hold the Volume Down and Power buttons simultaneously to restart into fastboot mode.
echo Check unlock state...
for /f "tokens=2 delims=: " %%a in ('fastboot getvar unlocked 2^>^&1 ^| findstr "unlocked"') do (
    set state=%%a
)
if /i "%state%"=="yes" set unlocked=1
if /i "%state%"=="true" set unlocked=1
if "%unlocked%"=="1" (
    echo Your device is unlocked !
) else (
    echo unlock fail , please retry !
)
pause
goto end

::XIAOMI 15 PRO - HAOTIAN
:haotian
echo Device selected : Xiaomi 15 Pro - haotian
echo Flashing ENG ROM....
cd /d "%~dp0bin\eng\haotian"
call flash_all.bat
TIMEOUT /T 3
fastboot reboot bootloader
TIMEOUT /T 3
cd /d "%~dp0"
echo Flashing unlock....
fastboot flash partition:4 "%~dp0bin\gpt\1\gpt_both4.bin"
fastboot boot "%~dp0bin\gpt\1\boot.img"
echo Your device will display a white screen; press and hold the Volume Down and Power buttons simultaneously to restart into fastboot mode.
echo Check unlock state...
for /f "tokens=2 delims=: " %%a in ('fastboot getvar unlocked 2^>^&1 ^| findstr "unlocked"') do (
    set state=%%a
)
if /i "%state%"=="yes" set unlocked=1
if /i "%state%"=="true" set unlocked=1
if "%unlocked%"=="1" (
    echo Your device is unlocked !
) else (
    echo unlock fail , please retry !
)
pause
goto end

::XIAOMI 15 ULTRA - XUANYUAN
:xuanyuan
echo Device selected : Xiaomi 15 Ultra - xuanyuan
echo Flashing ENG ROM....
cd /d "%~dp0bin\eng\xuanyuan"
call flash_all.bat
TIMEOUT /T 3
fastboot reboot bootloader
TIMEOUT /T 3
cd /d "%~dp0"
echo Flashing unlock....
fastboot flash partition:4 "%~dp0bin\gpt\1\gpt_both4.bin"
fastboot boot "%~dp0bin\gpt\1\boot.img"
echo Your device will display a white screen; press and hold the Volume Down and Power buttons simultaneously to restart into fastboot mode.
echo Check unlock state...
for /f "tokens=2 delims=: " %%a in ('fastboot getvar unlocked 2^>^&1 ^| findstr "unlocked"') do (
    set state=%%a
)
if /i "%state%"=="yes" set unlocked=1
if /i "%state%"=="true" set unlocked=1
if "%unlocked%"=="1" (
    echo Your device is unlocked !
) else (
    echo unlock fail , please retry !
)
pause
goto end

::REDMI K90 - ANNIBALE
:annibale
echo Device selected : REDMI K90 - annibale
echo Flashing ENG ROM....
cd /d "%~dp0bin\eng\annibale"
call flash_all.bat
TIMEOUT /T 3
fastboot reboot bootloader
TIMEOUT /T 3
cd /d "%~dp0"
echo Flashing unlock....
fastboot flash partition:4 "%~dp0bin\gpt\1\gpt_both4.bin"
fastboot boot "%~dp0bin\gpt\1\boot.img"
echo Your device will display a white screen; press and hold the Volume Down and Power buttons simultaneously to restart into fastboot mode.
echo Check unlock state...
for /f "tokens=2 delims=: " %%a in ('fastboot getvar unlocked 2^>^&1 ^| findstr "unlocked"') do (
    set state=%%a
)
if /i "%state%"=="yes" set unlocked=1
if /i "%state%"=="true" set unlocked=1
if "%unlocked%"=="1" (
    echo Your device is unlocked !
) else (
    echo unlock fail , please retry !
)
pause
goto end

::REDMI K80 PRO - miro
:miro
echo Device selected : REDMI K80 Pro - miro
echo Flashing ENG ROM....
cd /d "%~dp0bin\eng\miro"
call flash_all.bat
TIMEOUT /T 3
fastboot reboot bootloader
TIMEOUT /T 3
cd /d "%~dp0"
echo Flashing unlock....
fastboot flash partition:4 "%~dp0bin\gpt\1\gpt_both4.bin"
fastboot boot "%~dp0bin\gpt\1\boot.img"
echo Your device will display a white screen; press and hold the Volume Down and Power buttons simultaneously to restart into fastboot mode.
echo Check unlock state...
for /f "tokens=2 delims=: " %%a in ('fastboot getvar unlocked 2^>^&1 ^| findstr "unlocked"') do (
    set state=%%a
)
if /i "%state%"=="yes" set unlocked=1
if /i "%state%"=="true" set unlocked=1
if "%unlocked%"=="1" (
    echo Your device is unlocked !
) else (
    echo unlock fail , please retry !
)
pause
goto end

::XIAOMI PAD 8 PRO - PIANO
:piano
echo Device selected : Xiaomi Pad 8 Pro - piano
echo Flashing ENG ROM....
cd /d "%~dp0bin\eng\piano"
call flash_all.bat
TIMEOUT /T 3
fastboot reboot bootloader
TIMEOUT /T 3
cd /d "%~dp0"
echo Flashing unlock....
cd /d "%~dp0bin\gpt\2"
call flash_all.bat
echo Your device will display a white screen; press and hold the Volume Down and Power buttons simultaneously to restart into fastboot mode.
echo Check unlock state...
for /f "tokens=2 delims=: " %%a in ('fastboot getvar unlocked 2^>^&1 ^| findstr "unlocked"') do (
    set state=%%a
)
if /i "%state%"=="yes" set unlocked=1
if /i "%state%"=="true" set unlocked=1
if "%unlocked%"=="1" (
    echo Your device is unlocked !
) else (
    echo unlock fail , please retry !
)
pause
goto end

pause
echo Thank you for using tool !
start github.com/18xjul08
pause
::MANVANCONGGGGG