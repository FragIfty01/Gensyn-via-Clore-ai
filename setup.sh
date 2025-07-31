#!/bin/bash

set -e

echo "Updating system and installing dependencies..."

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install -y nvidia-cuda-toolkit
sudo apt-get install -y \
  screen curl iptables build-essential git wget lz4 jq make gcc nano \
  automake autoconf tmux htop nvme-cli libgbm1 pkg-config libssl-dev \
  libleveldb-dev tar clang bsdmainutils ncdu unzip

# Node.js 22.x & yarn
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt install -y nodejs
node -v

sudo npm install -g yarn
yarn -v

# Install yarn (alternative method)
curl -o- -L https://yarnpkg.com/install.sh | bash
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Python dev
sudo apt install -y python3.12-venv python3.12-dev

# Clone repo if not exists
if [ ! -d "rl-swarm" ]; then
  git clone https://github.com/gensyn-ai/rl-swarm.git
fi

cd rl-swarm

# Check for swarm.pem
if [ ! -f "swarm.pem" ]; then
  echo -e "\n\033[1;31m⚠️  Please place your swarm.pem file in the rl-swarm directory before continuing! \033[0m"
  echo "After copying swarm.pem here, rerun this script."
  exit 1
fi

# Set up Python venv
python3 -m venv .venv
source .venv/bin/activate

# Run RL Swarm
./run_rl_swarm.sh
