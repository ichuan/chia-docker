#!/bin/bash

# listen IP
sed -i 's/self_hostname: 127.0.0.1/self_hostname: 0.0.0.0/g' /root/.chia/mainnet/config/config.yaml

# see https://github.com/Chia-Network/chia-docker/blob/main/Dockerfile
exec /usr/local/bin/docker-entrypoint.sh docker-start.sh
