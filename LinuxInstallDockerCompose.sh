#!/bin/bash
# 参考：https://docs.docker.com/compose/install/
# 不适用 WSL

# docker compose 稳定版
stable_release='v2.4.1'
arch=$(uname -m)

echo "Download the current stable release of Docker Compose..."
curl -SL https://github.com/docker/compose/releases/download/$stable_release/docker-compose-linux-$arch -o /usr/local/bin/docker-compose

echo "Apply executable permissions to the binary..."
chmod +x /usr/local/bin/docker-compose

echo "Test the installation..."
docker-compose --version