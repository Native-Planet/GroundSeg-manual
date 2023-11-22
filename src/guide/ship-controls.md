# Ship controls

This document describes the settings present in the ship controls menu.

![](/static/gs2/ship-settings.png)

1. Title
    - This shows the `@p` of your ship, and the version of Vere your ship is using.
2. System resources
    - This shows the amount of memory and disk usage your ship's container is currently reporting (refreshes every 10 seconds)
3. Power
    - Use the checkbox to save your ship's power status (e.g. restart a running ship on power reset). Use the toggle to turn your ship on and off.
4. Urbit Information
    - The 'Access Key' button will copy your `+code` login password to your clipboard when you click it.  The 'URL' button will open your ship's URL in your browser -- either the `.local` URL if your ship isn't toggled to remote, or the remote StarTram/Anchor URL if it is.
5. Set Custom Urbit Domain
    - The custom Urbit domain field allows you to set a custom URL for your remote-toggled ship. See the [custom domain guide](/guide/custom-domains.html) for instructions on configuring a custom domain.
6. Minio
    - Copy Minio Password will copy your console password to allow you to login to the Minio console
    - Settings will take you to the Minio console URL (remote-only)
    - Connect to Urbit auto-configures S3 on your ship using the Minio settings
    - See the [custom domain guide](/guide/custom-domains.html) for instructions on configuring a custom domain.
7. Pack Pier
    - 'Pack & Meld' will immediately shut down your ship and perform a pack and meld, 'defragmenting' the memory arena.
    - 'Pack' will only perform an online pack
    - The calendar icon allows you to schedule recurring packs/melds
8. Remote Access
    - Switch the toggle to connect or disconnect your ship with StarTram and enable/disable the remote access URL
9. Developer Mode
    - This option allows you to SSH into the container your ship is running in and enter the CLI Dojo, at the expense of having logs printed
    - See [Dev mode guide](/guide/devmode.html)
10. Loom size
    - Your loom size is the maximum amount of memory your Urbit can use
    - Urbit use a default 2GB loom -- you can increase it if necessary, but probably shouldn't unless you have a specific reason
    - If your ship's loom exceeds the selected loom size, it will not boot successfully.