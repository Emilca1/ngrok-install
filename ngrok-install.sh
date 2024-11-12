#/bin/bash

#Download public key for Ngrok on Amazon S3, add to APT keys then install Ngrok.
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok

echo "To obtain your token, you must first create a Ngrok account : https://dashboard.ngrok.com/signup"

echo "Please enter your token (https://dashboard.ngrok.com/get-started/your-authtoken):"
#wait for user entry
read token

# Configure Ngrok with the given token
ngrok config add-authtoken $token


echo "Installation is now complete. Start your tunnel with the following command: ngrok tcp 22 (SSH tunnel for example)"
