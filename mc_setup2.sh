
# Accept Minecraft EULA
echo "eula=true" > eula.txt

# allow crack
echo "online-mode=false" > server.properties

chmod +x start.sh

wget https://github.com/playit-cloud/playit-agent/releases/download/v0.15.0/playit-linux-amd64 -o playit
chmod +x playit
