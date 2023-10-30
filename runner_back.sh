#!/bin/bash

git clone -b dev https://github.com/web-synergy/museum-back.git

docker compose --file docker-compose-backend.yml up --build

docker compose --file docker-compose-backend.yml down

rm -rf museum-back
