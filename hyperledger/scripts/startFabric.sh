#!/bin/bash

# Exit on first error
set -e

# Define paths
NETWORK_PATH="../network"
CRYPTO_CONFIG="${NETWORK_PATH}/crypto-config.yaml"
CONFIG_TX="${NETWORK_PATH}/configtx.yaml"
DOCKER_COMPOSE="${NETWORK_PATH}/docker-compose.yaml"

echo "🚀 Starting Hyperledger Fabric Network..."

# Step 1: Clean previous crypto material and containers
echo "🧹 Cleaning up previous network data..."
docker-compose -f $DOCKER_COMPOSE down -v
rm -rf ${NETWORK_PATH}/crypto-config ${NETWORK_PATH}/channel-artifacts

# Step 2: Generate crypto material
echo "🔑 Generating crypto materials..."
cryptogen generate --config=$CRYPTO_CONFIG --output=${NETWORK_PATH}/crypto-config

# Step 3: Generate channel artifacts
echo "📜 Generating channel artifacts..."
mkdir -p ${NETWORK_PATH}/channel-artifacts
configtxgen -profile SampleMultiMSPChannel -outputCreateChannelTx ${NETWORK_PATH}/channel-artifacts/channel.tx -channelID mychannel
configtxgen -profile SampleMultiMSPChannel -outputAnchorPeersUpdate ${NETWORK_PATH}/channel-artifacts/Org1MSPanchors.tx -channelID mychannel -asOrg Org1MSP
configtxgen -profile SampleMultiMSPChannel -outputAnchorPeersUpdate ${NETWORK_PATH}/channel-artifacts/Org2MSPanchors.tx -channelID mychannel -asOrg Org2MSP

# Step 4: Start Docker containers
echo "🐳 Starting Docker containers..."
docker-compose -f $DOCKER_COMPOSE up -d

# Step 5: Create and join the channel
echo "📡 Setting up the Hyperledger Fabric channel..."
docker exec cli peer channel create -o orderer.example.com:7050 -c mychannel -f /etc/hyperledger/channel-artifacts/channel.tx --outputBlock /etc/hyperledger/channel-artifacts/mychannel.block
docker exec cli peer channel join -b /etc/hyperledger/channel-artifacts/mychannel.block

echo "✅ Hyperledger Fabric network is up and running!"


# ---

# Explanation of startFabric.sh

# 1. Cleanup (docker-compose down)

# Stops and removes any existing Fabric network.

# Deletes old crypto materials and artifacts.



# 2. Generate Crypto Materials (cryptogen generate)

# Uses crypto-config.yaml to create peer and orderer certificates.



# 3. Generate Channel Artifacts (configtxgen)

# Creates channel configuration transaction (channel.tx).

# Generates anchor peer updates for Org1 and Org2.



# 4. Start Network (docker-compose up -d)

# Brings up Fabric orderer, peers, and CLI container.



# 5. Create & Join Channel (peer channel create/join)

# Creates Hyperledger Fabric channel (mychannel).

# Peers join the channel.





# ---

# Next Steps

# 1. Create stopFabric.sh to stop and clean the network.


# 2. Create docker-compose.yaml to define Fabric services in Docker.