#!/bin/bash

git clone -b feature/arm64v8-support--users-crud-v1 https://github.com/web-synergy/museum-back.git
git clone -b main https://github.com/web-synergy/museum-main.git
git clone -b main https://github.com/web-synergy/museum-admin.git

cp ./Dockerfile ./museum-main
cp ./Dockerfile ./museum-admin

cp -r ./docker ./museum-main
cp -r ./docker ./museum-admin

docker compose up --build
