# Release channels

GroundSeg uses three release channels for its software:

1. The **latest** channel is the default, meant for public use. Almost everyone should be using this.
2. The **edge** channel is used for internal testing. You are welcome to use it, but it may have stability issues. You might be asked to switch to it for troubleshooting if you're having a problem.
3. The **canary** channel is the same as `latest`, except it uses a modified version of the latest `tloncorp/vere` image. If you want to run the testing versions of the Urbit binary, this is the option for you.

If you're unsure about which one to use, just stick with `latest`! The other two are for testing and may be unstable.

```bash
ssh nativeplanet@nativeplanet.local
<default password: nativeplanet>
sudo nano /opt/nativeplanet/groundseg/settings/system.json
```

Scroll down until you find the following line:

```
"updateBranch": "latest",
```

You can edit `latest` to `edge`, or `canary`, then run:

```bash
sudo systemctl restart groundseg
```

...and Groundseg will restart itself and download the appropriate packages -- this may take a minute or two.

You can verify the version you're running in the system settings menu:

![Release channel image](/static/channel.png)

You can switch back to latest any time -- however, you may run into issues if you boot a ship with a newer version of Vere (for instance, a test version on the `canary` channel) and try to go backwards by switching to latest. This is uncommon but worth bearing in mind.

You can see which version of Vere you're running in your ship's 'Advanced' menu:

![Vere version in Groundseg](/static/vere-version.png)