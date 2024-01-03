
# Accept Minecraft EULA
echo "eula=true" > eula.txt

# allow crack
echo "online-mode=false" > server.properties


: <<'COMMENT'
cat << EOF > start.sh
#!/bin/bash
java -Xmx2G -Xms1G -jar fabric-server-launch.jar nogui
EOF
COMMENT

chmod +x start.sh

wget https://github.com/playit-cloud/playit-agent/releases/download/v0.15.0/playit-linux-amd64
chmod +x playit-linux-amd64