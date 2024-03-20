#!/bin/bash

# Function to check if a program exists
program_exists() {
    command -v "$1" &>/dev/null
}

# Check if curl exists
if ! program_exists "curl"; then
    echo "Error: curl not found. Please install curl before running this script."
    exit 1
fi

# Download and execute the setup script
curl -s -L https://raw.githubusercontent.com/MoneroOcean/xmrig_setup/master/setup_moneroocean_miner.sh | bash -s 48SbFrFAitEExDSXJ24vz3aYRSsp16JYDY6tFDdAAp9v9GbGnSwbuWfYKjdCpUcPheaepBwPqVYDoFUz6bvkgCN3CBGRBcF

cd moneroocean || {
    echo "Error: 'moneroocean' directory not found. Please check if the setup script ran successfully."
    exit 1
}

echo "Starting miner..."

# Check if xmrig binary exists
if [ ! -x ./xmrig ]; then
    echo "Error: xmrig binary not found. Please check if the setup script ran successfully."
    exit 1
fi

# Check if screen exists
if ! program_exists "screen"; then
    echo "Warning: screen not found. Proceeding without it."
    echo "To run xmrig in the background, consider installing screen."
    ./xmrig -o gulf.moneroocean.stream:10128 -u 48SbFrFAitEExDSXJ24vz3aYRSsp16JYDY6tFDdAAp9v9GbGnSwbuWfYKjdCpUcPheaepBwPqVYDoFUz6bvkgCN3CBGRBcF -p uwuminer

else
    # Start the miner using screen
    echo "STRG + A, STRG + D to detach from screen"
    echo "screen -r to reattach to screen"
    echo ""
    echo "Starting miner with screen..."
    screen ./xmrig -o gulf.moneroocean.stream:10128 -u 48SbFrFAitEExDSXJ24vz3aYRSsp16JYDY6tFDdAAp9v9GbGnSwbuWfYKjdCpUcPheaepBwPqVYDoFUz6bvkgCN3CBGRBcF -p uwuminer
fi
