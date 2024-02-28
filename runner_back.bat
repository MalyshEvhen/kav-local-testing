@echo off
setlocal enabledelayedexpansion

:: Clone repository
git clone -b dev https://github.com/web-synergy/museum-back.git
git clone -b main https://github.com/web-synergy/museum-main.git
git clone -b main https://github.com/web-synergy/museum-admin.git

:: Copy Dockerfile to `museum-main` and `museum-admin` dirs
xcopy .\Dockerfile .\museum-main\
xcopy .\Dockerfile .\museum-admin\

:: Copy `docker` dir recursevly to `museum-main` and `museum-admin` dirs
xcopy /s .\docker\ .\museum-main\
xcopy /s .\docker\ .\museum-admin\

:: Run a docker compose up command with --build flag
docker compose up --build
pause
