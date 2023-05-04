# StarTram

**[StarTram](https://nativeplanet.io/startram)** is Native Planet's custom networking stack that lets you access GroundSeg from the public internet, even if it's hosted on your home network, with no technical configuration on your part. This document describes how to use the StarTram menu.

![](/static/startram-settings.png)

If you have already registered your device on StarTram, your menu will look similar to the above screenshot. Your current subscription information is described in the boxes:

### Basic options

- Your **Active Region** is the region your StarTram subscription is set to.
- Your **Expiry Date** is the date that your StarTram subscription will expire. 
- **Auto Renew** will say 'Yes' if you have an ongoing subscription -- your expiry date will automatically extend upon being billed.

The **Region** your StarTram is in is the physical location of the data center that you connect to. You should choose the location that is physically closest to you, in order to reduce latency.

You can use the **StarTram Key Registration** text field to register your device using a registration code. If you are a StarTram subscriber, this is emailed to you upon your first payment. If you are using a self-hosted anchor, this is the password that you assigned when you were setting it up. 

You can re-register with a new region if you decide to change it in the future.

### Advanced options

**Restart StarTram** can be used to restart the Wireguard container on your GroundSeg device -- under unusual circumstances, this may be necessary to fix a broken connection.

The **Set Endpoint** text field is used when you enter a new registration code. By default, this is `api.startram.io`, Native Planet's official StarTram service. If you are self-hosting anchor, you should set your custom domain here (e.g. `api.anchor.mydomain.com`).

You can use the **cancellation** field in this menu to cancel an ongoing StarTram subscription. Just enter your registration code and submit it -- your subscription will still be valid until the expiry date. You can also cancel it at [nativeplanet.io/startram](https://nativeplanet.io/startram).