#curl -SsL https://playit-cloud.github.io/ppa/key.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/playit.gpg >/dev/null
#echo "deb [signed-by=/etc/apt/trusted.gpg.d/playit.gpg] https://playit-cloud.github.io/ppa/data ./" | sudo tee /etc/apt/sources.list.d/playit-cloud.list
#sudo apt update
#sudo apt install playit

wget https://github.com/playit-cloud/playit-agent/releases/download/v0.15.0/playit-linux-amd64
chmod +x playit-linux-amd64
./playit-linux-amd64
