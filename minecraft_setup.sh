#!/bin/bash

# Update and install necessary packages
sudo apt-get update
sudo apt-get install -y default-jre screen

# Download Minecraft server jar
wget https://meta.fabricmc.net/v2/versions/loader/1.20.1/0.15.3/0.11.2/server/jar -O fabric-server-launcher.jar
wget -P mods https://cdn.modrinth.com/data/MdwFAVRL/versions/YEzu8qAH/Cobblemon-fabric-1.4.0%2B1.20.1.jar

# Run Fabric server installer
java -jar fabric-server-launcher.jar server

# Accept Minecraft EULA
echo "eula=true" > eula.txt

# allow crack
echo "online-mode=false" > server.properties

# Create a startup script
cat << EOF > start.sh
#!/bin/bash
screen -S minecraft -dm java -Xmx2G -Xms1G -jar fabric-server-launch.jar nogui
EOF

chmod +x start.sh

# Start the server
./start.sh
