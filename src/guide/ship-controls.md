# Ship controls

This document describes the settings present in the basic ship controls menu.

![](/static/basic-menu.png)

1. Access Key
    - Your access key is your ship's `+code`, the password that allows you to access your ship's web interface
2. Ship Access URL
    - You can copy your ship's web URL from this menu, or open it in a new tab using the arrow icon
    - Your ship's access URL will change if you switch it between Local and Remote mode (see below)
3. MinIO Local Storage Console
    - MinIO is what GroundSeg uses to automatically host and configure S3 storage for your Urbit ship
    - Minio is a self-contained application which can be managed via its web console, which this item will allow you to open in your browser
    - Note that it is not necessary to directly manage Minio -- GroundSeg will automatically configure it, and automatically link it to your ship if you click the 'Link' button
4. Connectivity
    - The connectivity toggle allows you to switch your ship between local and remote mode
    - In local mode, a ship is only accessible on your local network (e.g. at `nativeplanet.local:8090` or similar)
    - In remote mode, your ship can be accessed via the public internet. Note that this requires your GroundSeg device be registered with [StarTram](https://nativeplanet.io/startram) or a self-hosted [Anchor](https://github.com/Native-Planet/Anchor) service.
5. Logs
    - Clicking 'Logs' will show you the logs printed by your ship, which may be useful for debugging. Note that it is not an interactive dojo (see [dev mode](/guide/devmode.html)).
6. Power toggle
    - At the top right corner of the basic settings menu box, you can see a toggle button that is used to turn your ship on and off.