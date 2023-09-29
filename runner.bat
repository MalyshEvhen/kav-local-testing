@echo off
setlocal enabledelayedexpansion

:: Define repository URLs
set "repos[0]=https://github.com/baza-trainee/kavaleridze-admin.git"
set "repos[1]=https://github.com/baza-trainee/kavaleridze-backend.git"
set "repos[2]=https://github.com/baza-trainee/kavaleridze.git"

:: Clone repositories
for %%i in (0 1 2) do (
    git clone -b dev "!repos[%%i]!"
)

:: Run a docker compose up command with --build flag
docker compose up --build

:: Optionally, you can remove the cloned repositories after running the command
:: for %%i in (0 1 2 3) do (
::     set "repo_name=!repos[%%i]:~26,-4!"
::     rmdir /s /q "!repo_name!"
:: )

endlocal