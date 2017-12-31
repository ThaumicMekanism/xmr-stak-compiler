@echo off
setlocal enabledelayedexpansion
title ThaumicMekanism's xmr-stak Compiler v1.0.0
echo This xmr-stak compiler script was created by ThaumicMekanism.
echo Hope this script helps and donate if you like it! :)
echo ETN: etnk5wXV6msNS4iHuCxYWH8f1TX11Rcn4K7RvMAhWTkGjHJsP49pytzaZMkXrecX6U76FDWNcpnE4PgRmWbFJ9Np95f7EvJMFK
echo Press any key to start
pause>nul
echo.
echo.
echo Please select which version of Cuda you will use: (type the number)
echo 1. Cuda 8
echo 2. Cuda 9
echo 3. None
:Selection1
set /p "cudaver=>"
if "%cudaver%"=="1" goto Sel1Next
if "%cudaver%"=="2" goto Sel1Next
if "%cudaver%"=="3" goto Sel1Next
echo Please only select one of the options!
goto Selection1
:Sel1Next
echo.
echo Please enter the year of visual studio which will go into this path (Replacing YYYY):
echo "C:\Program Files (x86)\Microsoft Visual Studio\YYYY\Community\Common7\Tools\VsMSBuildCmd.bat"
echo Enter 'custom' if you want to add a custom path.
set /p "MVSver=>"
if /I "%MVSver%"=="custom" goto getDir
:start
echo.
echo Settings complete. Press any key to start the setup.
pause>nul
echo.
echo.
:skip
cd xmr-stak*
echo Setting up build directory and files...
echo.
echo.
if /I "%MVSver%"=="custom" (
    call "%custDir%"
) else (
    call "C:\Program Files (x86)\Microsoft Visual Studio\%MVSver%\Community\Common7\Tools\VsMSBuildCmd.bat"
)
::call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsMSBuildCmd.bat"
set CMAKE_PREFIX_PATH=C:\xmr-stak-dep\hwloc;C:\xmr-stak-dep\libmicrohttpd;C:\xmr-stak-dep\openssl
if exist "build\" (
    echo Build already exists! Removing it...
    rmdir /s /q build
    echo Removed.
)
mkdir build
cd build
echo.
echo.
echo Done!
echo.
echo Setting the version of cuda... &echo. &echo.
if "%cudaver%"=="3" echo Cuda version set to None
if "%cudaver%"=="1" cmake -G "Visual Studio 15 2017 Win64" -T v140,host=x64 ..
if "%cudaver%"=="2" cmake -G "Visual Studio 15 2017 Win64" -T v141,host=x64 ..
echo. &echo. &echo Done! &echo.
echo Compiling the files now!
echo.
echo.
cmake --build . --config Release --target install
echo Done! (Check if it was build successfully)
echo.
echo.
pause
echo Moving final needed files...
echo.
echo.
cd bin\Release
copy C:\xmr-stak-dep\openssl\bin\* .
echo.
echo.
echo Finished! Press any key to close...
pause>nul
exit /b

:getDir
echo Please enter the custom directory.
set /p "custDir=>"
goto start