# Advanced ship menu

This document describes the features and options present in a ship's 'Advanced' menu.

![Advanced menu](/static/ship-advanced.png)

1. Access key
    - Allows you to view or copy the `+code` used to log into your ship's web interface
2. Ship Access URL
    - Allows you to view or copy the URL used to access your ship's web interface
    - Click the arrow icon to open in a new tab
3. MinIO Settings
    - **Minio** is used to store media for your ship via its S3 API, which Groups and Talk can use to automatically upload images to share with peers. Minio **only works in remote mode** -- i.e., you must have your ship connected to StarTram or Anchor so that it has a public URL.
    - **Minio Local Storage Console** is the web URL you can use to log into Minio to manage it
    - **Link to Urbit** automatically configures your ship to use Minio for S3
    - **Unlink** will remove Minio from your Urbit's S3 configuration
    - **Export bucket** allows you to export an archive of the content that has been uploaded to your Minio S3 bucket
4. Pack & Meld
    - **Packing and melding** are used to keep a ship's loom (memory arena) as compact as possible. This allows you to use less memory when you are running it. GroundSeg allows you to automatically schedule packing and melding -- once a week should be fine for most people.
    - **Urth Pack and Meld** will turn the ship off before using pack and meld ('offline').
5. Connectivity
    - This toggle will allow you to set your ship to local or remote mode (if available)
    - Local mode will serve the ship on your local network, but will not be accessible from the internet
    - Remote mode will serve your ship through a StarTram or Anchor tunnel, and be accessible on the public internet
    - If this option is not available, you can register your device on [StarTram](https://nativeplanet.io/startram)
6. Loom Size
    - Your loom size is the maximum amount of memory your Urbit can use
    - Urbit use a default 2GB loom -- you can increase it if necessary, but probably shouldn't unless you have a specific reason
    - If your ship's loom exceeds the selected loom size, it will not boot successfully.
7. Admin Actions
    - **Enable Developer Mode** will boot your ship in its container attached to a `tmux` pane, which will allow you to attach to the ship's dojo via a command line rather than the web dojo (see [the Dev Mode guide](/guide/devmode.html)). As a tradeoff, your ship's logs will not be available to GroundSeg.
    - **Export Urbit Pier** will turn your ship off and allow you to download an archive of its data so you can move it somewhere else
    - **Delete Urbit Pier** will delete your ship's data from your GroundSeg device
8. Additional Information
    - **vere version** displays the current version of Vere, the Urbit runtime, being used to run your ship. If someone asks you which binary you're using, you can find it here.
9. Urbit/MinIO Custom Domain
    - If you are using StarTram, you can assign a custom domain to your Urbit's web interface, or your Minio bucket's URL.
    - All custom domains must be subdomains due to the nature of DNS CNAME records.
    - See the [custom domain guide](/guide/custom-domains.html) for instructions on configuring a custom domain.