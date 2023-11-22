# Booting a ship

GroundSeg allows you to boot a brand new ship, or upload one you've run elsewhere. You can find instructions for both below.

1. [Boot a new Urbit ID](#booting-a-new-urbit-id)
2. [Boot an existing Urbit ID](#booting-an-existing-urbit-id)

## Booting a new Urbit ID

If your ship has never been started before, use these instructions.

To boot a brand new ship, you need a [keyfile](https://developers.urbit.org/reference/glossary/keyfile). This is **not** the same thing as a master ticket! 

#### Stars, planets and galaxies

To get your keyfile:
- Go to [bridge.urbit.org](https://bridge.urbit.org) and log in with your crypto wallet or master ticket.
- Click the 'OS' menu option:

![OS in Bridge](/static/bridge-os.png)

- At the top of the OS menu, click 'Download keyfile':

![keyfile in Bridge](/static/bridge-keyfile.png)

Next, in GroundSeg, click the new ship `+` icon:

![Boot a new ID image](/static/gs2/new-ship-button.png)

In the top text field, enter the `@p` (name) of your ship -- like `~sampel-palnet` or `~wanzod` (the `~` is optional). 

In the bottom field, upload the keyfile you just downloaded, and click **Create a new pier**.

Voila! Wait a few minutes for initial bootstrapping, and you're ready to fly.

#### Moons

Moons are booted the same way, but you don't need to get a keyfile from Bridge. Spawn a moon from your ship by running `|moon` in the dojo, or by using an app like `%houston`, an Urbit app used for managing moons in a web interface (available at `~nodmyn-dosrux/houston`).

When you run `|moon`, it will print a moon's `@p` and a long random-looking string in the dojo. Copy both of them, paste the `@p` in the top text field in the 'Boot a new Urbit ID' menu, and paste the long string into the bottom field. Then, click the 'Create a new pier' button.

#### Important note for macOS users

It has been reported that macOS may corrupt keyfiles downloaded from Bridge on disk due to the extension's association with the Keynote app. If you are using a mac, we recommend **opening the keyfile in a text editor** and pasting its contents into this text area instead of uploading the file.

## Booting an existing Urbit ID

If you've already booted a ship and want to migrate it to GroundSeg, the process is very straightforward. 

- On the device that was previously running your ship, **turn the ship off** -- sounds obvious, but it's worth double checking! Your ship may be damaged if you don't do this.
- Next, compress the pier directory. Navigate to the directory containing your pier -- e.g., if you type `ls`, you should be able to see the pier directory. Rename the pier directory to be the same as your planet (for example, `mv myplanet sampel-palnet`).
- If you're using Linux, the compress command might look like...

```
tar cvzf sampel-palnet.tar.gz sampel-palnet/
```

- In GroundSeg click the 'new ship' `+` icon in your dashboard, then the 'Import Pier' button:

![](/static/gs2/boot-screen.png)

- Proceed through the warning after double checking that your ship is shut off.
- Upload the archive you created here:

![](/static/gs2/import-pier.png)

Note that the upload form supports `.tgz`, `.tar`, `.tar.gz`, and `.zip` files.

If your ship fails to boot, make sure that **both** the archive and the directory inside of it have the name of your ship!
