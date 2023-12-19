#!/bin/bash

# Update and install necessary packages
sudo apt-get update
sudo apt-get install -y default-jre screen

# Download Minecraft server jar
wget https://papermc.io/api/v2/projects/paper/versions/1.17.1/builds/425/downloads/paper-1.17.1-425.jar -O server.jar

# Create a directory for the server
mkdir minecraft_server
cd minecraft_server

# Create a startup script
cat << EOF > start.sh
#!/bin/bash
screen -S minecraft -dm java -Xmx2G -Xms1G -jar ../server.jar nogui
EOF

chmod +x start.sh

# Start the server
./start.sh
