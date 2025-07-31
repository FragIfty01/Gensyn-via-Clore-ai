#!/bin/bash

set -e

echo "🔄 Updating system and installing dependencies..."

apt-get update && apt-get upgrade -y

apt-get install -y nvidia-cuda-toolkit
apt-get install -y \
  screen curl iptables build-essential git wget lz4 jq make gcc nano \
  automake autoconf tmux htop nvme-cli libgbm1 pkg-config libssl-dev \
  libleveldb-dev tar clang bsdmainutils ncdu unzip

# Node.js 22.x & yarn
curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
apt install -y nodejs
node -v

npm install -g yarn
yarn -v

# Install yarn (alternative method)
curl -o- -L https://yarnpkg.com/install.sh | bash
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Python dev
apt install -y python3.12-venv python3.12-dev

# Check for swarm.pem
if [ ! -f "swarm.pem" ]; then
  echo -e "\n\033[1;33m⚠️  Please copy your swarm.pem file into the Gensyn-via-Clore-ai directory before continuing! \033[0m"
  echo "After copying swarm.pem here, rerun this script."
  exit 1
fi

# Set up Python venv
python3 -m venv .venv
source .venv/bin/activate

# Run RL Swarm
./run_rl_swarm.sh
