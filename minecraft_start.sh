
# Accept Minecraft EULA
echo "eula=true" > eula.txt

# allow crack
echo "online-mode=false" > server.properties

# Create a startup script
cat << EOF > start.sh
#!/bin/bash
java -Xmx2G -Xms1G -jar fabric-server-launch.jar nogui
EOF

chmod +x start.sh

# Start the server
./start.sh