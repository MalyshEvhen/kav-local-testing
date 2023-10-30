@echo off
setlocal enabledelayedexpansion

:: Clone repository
git clone -b dev https://github.com/web-synergy/museum-back.git

:: Run a docker compose up command with --build flag
docker compose --file docker-compose-backend.yml up --build

docker compose --file docker-compose-backend.yml down

:: Removing the cloned repository after running the command
rmdir /s /q museum-back
