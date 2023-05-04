# Settings menu

This document describes the options and features present in the system settings menu.

![](/static/settings-menu.png)

1. System Information
    - This menu shows a simple overview of resource usage on your GroundSeg device, like memory and CPU use. Some items in the screenshot may not be present if you're using GroundSeg on a third-party device.
    - The `API Version` and `Web UI Version` show the versions of the GroundSeg binary and web interface, respectively.
    - The **Auto update** toggle tells GroundSeg whether to automatically check for updates to GroundSeg and its components.
    - The **Restart GroundSeg** button will restart the GroundSeg server (but not your ships).
2. Connectivity
    - The connectivity tab shows your networking settings. Turning the `Ethernet Only` toggle on will disable wifi.
    - The bottom menu allows you to connect to your home wifi network via the dropdown and entering the password.
3. MinIO
    - The circle icon allows you to restart your MinIO container for troubleshooting
4. Netdata
    - [Netdata](https://www.netdata.cloud/) is a software package with extremely detailed information about resource usage on your device. Although it is only allowed in local mode, you can connect it to your Netdata Cloud account to receive notifications and alerts if you desire.
5. Swap memory
    - Swap memory tells a computer to write to the disk if it runs out of memory (known as 'swapping'). This comes with a performance penalty that is usually fairly noticeable, but is preferable to having your device crash. GroundSeg automatically allocates 16GB of disk for swapping, which you can adjust here.
6. Security
    - Set your GroundSeg access password here. This password the one you use to log into the web interface.
7. Power
    - You can shut down or restart the device running GroundSeg here.
8. Support
    - If you're having trouble or confused about something, feel free to reach out to us via our public group (`~raldeg/nativeplanet`), GitHub, or email. See also [Bug Reports](/guide/bug-reports.html).