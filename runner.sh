#!/bin/bash

# Clone repositories
repos=("https://github.com/baza-trainee/kavaleridze-admin.git" "https://github.com/baza-trainee/kavaleridze-backend.git" "https://github.com/baza-trainee/kavaleridze.git")

for repo in "${repos[@]}"; do
  git clone -b dev "$repo"
done

docker compose up --build

# Removing the cloned repositories after running the command
for repo in "${repos[@]}"; do
  repo_name=$(basename "$repo" .git)
  rm -rf "$repo_name"
done
