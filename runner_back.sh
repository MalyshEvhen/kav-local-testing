#!/bin/bash

git clone -b dev https://github.com/baza-trainee/kavaleridze-backend.git

docker compose --file docker-compose-backend.yml up --build

docker compose --file docker-compose-backend.yml down

rm -rf kavaleridze-backend
