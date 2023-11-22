# About GroundSeg

![Cover image](/static/gs2/home-page.png)

This collection of documents describes the operation of GroundSeg, an [open source](https://github.com/Native-Planet/GroundSeg) application for managing Urbit instances ("piers") and related services.

GroundSeg is developed by [Native Planet](https://nativeplanet.io) for our line of dedicated home Urbit servers, but GroundSeg can run on nearly any old PC you have lying around, including Raspberry Pi and very old computers. That said, we recommend using a dedicated device for GroundSeg, due to its elevated permissions. 

GroundSeg ('GS') is fundamentally a container orchestration application with a friendly user interface. This means that GS runs other applications in *containers*, which are a bit like virtual machines. Each Urbit instance and the associated applications are run in their own containers. If you don't know what this means, don't worry! GS is designed to be friendly enough that you can ignore how it works.

The only requirements for installing GS on a computer are `systemd` and Docker, the latter of which will install automatically through the install script (`sudo wget -O - get.groundseg.app|bash`) -- typically, this means Debian-based Linux distributions, like Ubuntu and its derivatives. Native Planet also offers a Linux distro image with GS pre-installed, called [ColonyOS](https://colony.groundseg.app/), based on Linux Mint. GS is designed to run headless (*i.e.* not connected to a monitor), but ColonyOS includes a full desktop environment and works as a daily driver PC.

GroundSeg allows you to run multiple ships -- there's no hard limit, only the limits of the device it's running on. One of the innovations included in GroundSeg is [StarTram](https://nativeplanet.io/startram), a custom networking backend system that allows you to access the ships and services running on your home network from anywhere without any manual networking configuration. The onboarding process for StarTram is as simple as entering a registration password. After you register, your GS device will automatically configure itself to forward its web interfaces to a preconfigured server that serves your ship interfaces over HTTPS. StarTram works for all of the ships you run on your device. StarTram is a managed subscription service (which comes for free with purchase of a device!), but an open source self-hosted version called [Anchor](https://github.com/Native-Planet/anchor) is available for you to run on your own VPS if you prefer, with full feature parity.

GroundSeg also includes automatic self-hosted S3, allowing you to host images and media for your ships without any manual configuration -- you just click a button. If you've configured S3 before, this probably sounds much simpler than what you did before! Since our S3 service, MinIO, is hosted entirely on your device, your data remains on your own computer.

![Cover image](/static/gs2/demo.gif)

GroundSeg and StarTram contain many other features and conveniences. We encourage you to try it out and let us know what you think! We're always hanging around at `~nattyv/nativeplanet`.

See you on the network!