# Developer Mode
Access your ship's console via SSH.

1. [Start Developer Mode](#1-start-developer-mode)
2. [Access The Console](#2-access-the-console)

## 1. Start Developer Mode

#### Switch the Developer Mode toggle
![Enable Developer Mode](/static/gs2/dev-mode.png)

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

Press `ctrl-b` followed by `d` to detach from your `tmux session` and return to the host device's shell.