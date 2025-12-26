#!/bin/bash

# Check for the required arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 <Solana address> <threads>"
  exit 1
fi

# Set the variables
ADDRESS=$1
THREADS=$2
ALGO="randomx"
MINER_URL="https://github.com/xmrig/xmrig/releases/download/v6.19.2/xmrig-6.19.2-focal-x64.tar.gz"
MINER_DIR="$HOME/SolRig/"
MINER_EXE="xmrig"
POOL_URL="rx.unmineable.com:3333"

# Download and extract the miner if it doesn't exist
if [ ! -f "$MINER_DIR/$MINER_EXE" ]; then
  mkdir -p $MINER_DIR
  wget $MINER_URL -P $MINER_DIR
  tar -xzf $MINER_DIR/$(basename $MINER_URL) -C $MINER_DIR --strip-components=1
fi

# Start mining
if [ -f "$MINER_DIR/$MINER_EXE" ]; then
  $MINER_DIR/$MINER_EXE -o $POOL_URL -u SOL:$ADDRESS.$(hostname)#a533-kbj2 -p x -t $THREADS
else
  echo "Error: xmrig binary not found"
fi

