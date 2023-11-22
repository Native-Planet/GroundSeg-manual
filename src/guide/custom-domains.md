# Custom StarTram domains

1. [Creating a CNAME](#1-creating-a-cname)
2. [Custom domains for a ship](#2-custom-domains-for-a-ship)
3. [Custom domains for MinIO](#3-custom-domains-for-minio)

StarTram supports custom domains for your ship. Instead of the gratis sampel-palnet.startram.io URL, you can easily use a subdomain for a domain you already own. You can also use your own domain for your MinIO S3 bucket’s public URL, so you can migrate your bucket without breaking your links.

## 1. Creating a CNAME

To make use of this feature, you’ll need a planet that is already registered with StarTram — make sure your ship can toggle to ‘remote’.

Go to your domain registrar’s website and find where you can manage DNS entries for the domain you want to use. You’ll need to create a CNAME record pointed at your default StarTram URL. If you’re creating CNAME for an S3 bucket, put an `s3.` in front of it, like `s3.sampel-palnet.startram.io`.

![CNAME record example](/static/domains-1.png)

CNAMEs have to use a subdomain, so enter the subdomain as your entry’s name — for example, if you want to use urbit.example.com, use urbit for the entry. For the target, enter your ship’s startram.io URL — like `sampel-palnet.startram.io`, without `https://`. You may need to put a `.` at the end of your domain for it to work correctly.

## 2. Custom domains for a ship

In GroundSeg, open the settings for the ship you want to use from the main menu. Select your ship's card from the dashboard, enter your custom domain in the 'Custom Urbit Domain' text bar and submit.

![Ship domain example](/static/gs2/custom-domain.png)

## 3. Custom domains for Minio

Minio's custom domain field is located in the same ship card menu, directly underneath the ship's custom domain field.

If you get an error, try waiting a few minutes and trying again — DNS can be a little slow to update sometimes. Once you successfully submit it, your custom domain should be accessible immediately.