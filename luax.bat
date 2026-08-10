@echo off
setlocal

:: cari lua yang kepasang
where lua55 >nul 2>nul && set LUA=lua55 & goto found
where lua54 >nul 2>nul && set LUA=lua54 & goto found
where lua >nul 2>nul && set LUA=lua & goto found
echo [ERROR] Lua tidak ditemukan! Install Lua dulu bro.
exit /b 1

:found
if "%1"=="start" goto start
if "%1"=="build" goto build
if "%1"=="all" goto all
if "%1"=="" goto help

:help
echo Usage: luax [command]
echo build - Build static site
echo start - Start HTTP server + hot reload
echo all - Build + Start
goto end

:build
%LUA% build.lua
goto end

:start
%LUA% start.lua
goto end

:all
%LUA% build.lua
%LUA% start.lua
goto end

:end