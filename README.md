# Ngrok Installation Script

This installation script simplifies the process of setting up Ngrok on a Debian-based Linux system and allows you to configure your authentication token for Ngrok in a few easy steps. Ngrok is useful for exposing local servers to the internet through secure tunnels, which is especially helpful for SSH access, testing webhooks, and hosting development environments.

## Prerequisites

- A Debian-based Linux distribution (such as Ubuntu).
- An Ngrok account. You can sign up [here](https://dashboard.ngrok.com/signup).

## Installation Instructions

The script will perform the following steps:

- Download and add the public key for Ngrok from Amazon S3.
- Add the Ngrok repository to your system's APT sources list.
- Update the package list and install Ngrok.
- Prompt you to enter your Ngrok authentication token, which you can obtain from your Ngrok dashboard under the authentication token section.


### 1. Download the Script

   ```bash
   git clone https://github.com/Emilca1/ngrok-install.git
   ```
### 2. give execute perms and start it
   ```bash
   cd ngrok-install && chmod +x ngrok-install.sh && ./ngrok-install.sh
   ```


### For Additional Documentation
For more Ngrok commands and use cases, refer to the [Ngrok documentation](https://ngrok.com/docs/).