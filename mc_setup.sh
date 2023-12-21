#!/bin/bash

# Update and install necessary packages
sudo apt-get update
sudo apt-get install -y default-jre screen

# Download Minecraft server jar
wget https://meta.fabricmc.net/v2/versions/loader/1.20.1/0.15.3/0.11.2/server/jar -O fabric-server-launch.jar

# Download Minecraft mod
mkdir mods
wget -P mods https://cdn.modrinth.com/data/MdwFAVRL/versions/YEzu8qAH/Cobblemon-fabric-1.4.0%2B1.20.1.jar
wget -P mods https://cdn.modrinth.com/data/P7dR8mSH/versions/YblXfKtI/fabric-api-0.91.0%2B1.20.1.jar

# Run Fabric server installer
java -jar fabric-server-launch.jar server
stop
