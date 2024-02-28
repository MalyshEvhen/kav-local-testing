@echo off
setlocal enabledelayedexpansion

:: Clone repository
git clone -b dev https://github.com/web-synergy/museum-back.git
git clone -b main https://github.com/web-synergy/museum-main.git
git clone -b main https://github.com/web-synergy/museum-admin.git

:: Run a docker compose up command with --build flag
docker compose up --build

