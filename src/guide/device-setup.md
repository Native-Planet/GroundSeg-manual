# Device setup 

- Find a good spot for your Native Planet device to live. Your device can connect to your home network with a network cable, or by connecting to your wifi network. It should be placed somewhere within cable distance of your router, or within range of a strong wifi signal. You can connect a monitor and keyboard to your device, but it is **not necessary** for normal use or configuration.

- Before powering on your device, attach the antennas if you plan to use wifi. **Do not attach antennas to a device that is already powered on, as it may damage the device**. Power on your device and wait 2-3 minutes for it to start up. The Tellurian will automatically power on as soon as it is plugged in; you will need to push the power button on the Aurora to power it on.

    - If your device doesn't detect a network connection on boot, it will broadcast its own wifi network ("connect-to-connect"), which you can use to configure it to use your home wifi network.

    - On your phone or computer, open your wifi settings and connect to the `NativePlanetConnect` network using the password `nativeplanet`. Once connected, navigate to [http://nativeplanet.local](http://nativeplanet.local) (**not** `https`) in your browser. Use the web interface to connect your Native Planet device to your home wifi network. Once connected to your home network, the device will stop broadcasting the C2C network.

- Once connected to the home network / internet, **give the device ~5 minutes to update** its software and restart. You will not be able to connect to the device until the update is complete. 

- On a device on your home network, open [http://nativeplanet.local](http://nativeplanet.local) (not `https`) in your browser.

- If you’re unable to open nativeplanet.local, try [http://nativeplanet.localdomain](http://nativeplanet.localdomain).

If you’re still unable to connect, make sure you’re on the same wifi network and not using a VPN — try from another device if necessary.

Welcome to GroundSeg! You will be asked to set a password for your device and be presented with the device's control panel. From here you can boot a new ID, import an existing ID, and control general functionality for your hardware and any Urbit instances you run on this machine.

## Booting your Urbit ID

### Getting an Urbit ID

GroundSeg does not support comets. If you don’t already have a planet, reach out to us.

- Go to [bridge.urbit.org](https://bridge.urbit.org/) and log in with your master ticket, or use your planet code if you have not already claimed it.

- Download your passport and keyfile from Bridge.

- In GroundSeg, select ‘Boot a new Urbit ID’, enter your ship’s name, and paste or upload the keyfile from Bridge.

If you already have a ship somewhere else that you don’t want to migrate to GroundSeg, you can still use it to [spawn moons](https://operators.urbit.org/manual/os/basics#moons) that you can run in GroundSeg. Use your moon’s key or keyfile the same way you’d boot a planet.

If you want another ID or don't already have one, you can follow [this guide on urbit.org](https://urbit.org/getting-started/get-id).

### Using an existing ID

If you already have a running Urbit and you want to move it to your Native Planet device:

- Shut down your Urbit wherever it is running. (**this step is crucial!**)

- Export your pier.

    - If you are using a hosting provider, use their data export function

    - If you are self-hosting, compress your pier directory in a zip or tar file

- Upload your pier using the 'Boot an existing Urbit ID' option in the GroundSeg UI. Make sure the file you upload has the your ship's name as the file name (example: `sampel-palnet.zip` if your ship’s name is `~sampel-palnet`)

### Configuring StarTram & S3

StarTram is Native Planet’s remote access service, that allows you to access your home-hosted Urbit from anywhere with zero configuration. Unless you only plan to access your Urbit from your home network, you are going to need a [StarTram subscription](https://www.nativeplanet.io/startram) — 1 year of service comes free with the purchase of you Native Planet device. 

#### Activating StarTram in GroundSeg

- Click on the 'Profile' menu in the upper right hand corner. 

![settings items](/static/gs2/settings-items.png)

- Enter Your registration code, select a region, submit, and wait for it to complete.

- Select your ship's menu in GroundSeg. The 'Remote access' toggle will disable and enable remote access to your ship via StarTram. When ‘Remote’ is enabled, you can access your ship from anywhere using the address in the 'URL' button.

#### Configuring MinIO S3 (Only available with StarTram)

- In your ship’s settings, create a password for MinIO

- Click “Link to Urbit”

- You’re done! Enjoy sharing images and files hosted safely on your Native Planet.


### SSH

Your box is accessible via SSH using the default username & password nativeplanet. We **strongly recommend** you change the default password!

- In a terminal: `ssh nativeplanet@nativeplanet.local`

- Log in with the password `nativeplanet`

- After logging in, run: `passwd`

- Set a strong new password