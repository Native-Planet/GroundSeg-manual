# Developer Mode
Access your ship's console via SSH.

1. [Start Developer Mode](#1-start-developer-mode)
2. [Access The Console](#2-access-the-console)
3. [Stop Developer Mode ](#3-stop-developer-mode)

## 1. Start Developer Mode

#### In your Urbit Ship Control Panel switch to the Advanced tab.
![Advanced Options](/static/advanced-options.png)

#### Click on Enable Developer Mode
![Enable Developer Mode](/static/devmode-enable.png)

#### Warning
![Developer Mode Warning](/static/devmode-warning.png)
- A utility named `click` is not working for you.
- Make sure to turn on autoupdates in GroundSeg. 
- Reach out to your Urbit OTA provider.

## 2. Access The Console

#### SSH into the Native Planet device

![Default SSH](/static/default-ssh.png)
1. Open the Command Prompt/PowerShell (Windows) or the Terminal application (MacOS/Linux)
2. Type the following command: `ssh nativeplanet@<hostname>.local`
3. Press Enter and enter the password when prompted (default: `nativeplanet`)

#### Enter the Docker container

![sudo prompt](/static/sudo-attach.png)
1. Type the following command: `sudo docker exec -it <your-patp> tmux a`
2. Enter the sudo password (default: `nativeplanet`)

![dojo tmux](/static/dojo-tmux.png)

Success!

## 3. Stop Developer Mode

#### Click on Disable Developer Mode
![Disable Developer Mode](/static/devmode-disable.png)

#### Exit from SSH session
![Exit SSH](/static/exit-ssh.png)
