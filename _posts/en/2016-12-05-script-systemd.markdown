---
layout: post
title:  "Python or Node Script as systemd Service"
date:   2016-12-05 18:00
lang: en
ref: systemd-service
sitemap:
    priority: 0.8
    changefreq: 'monthly'
    lastmod: 2016-12-05T12:49:30-05:00
---

Lately I needed to be able to autorun Python or Node Scripts as a systemd Service on a Ubuntu Server.

So first of all you need to create a new Service file  {% highlight shell linenos %}sudo nano /lib/systemd/system/example.service{% endhighlight %}


## Service File

And the Service File needs to be filled with:

{% highlight shell linenos %}
[Unit]
Description=Pufferfish Logger
After=multi-user.target

[Service]
User=ccproxy
Type=idle
ExecStart=/usr/bin/python /home/example/example.py

[Install]
WantedBy=multi-user.target
{% endhighlight %}

The _/user/bin/python_ can also be changed to Node or any other language.

## Service Access Rights

Now set the right access rights.
{% highlight shell linenos %}
sudo chmod 644 /lib/systemd/system/example.service
{% endhighlight %}

## Enable Service

Reload Systemctl and enable the created Service.
{% highlight shell linenos %}
sudo systemctl daemon-reload
 sudo systemctl enable example.service
{% endhighlight %}

## End
Now you can reboot the system and the Service will still be active, also the standard systemctl commands are now available for the Service.

{% highlight shell linenos %}
sudo systemctl start example.service
sudo systemctl stop example.service
sudo systemctl restart example.service
{% endhighlight %}
