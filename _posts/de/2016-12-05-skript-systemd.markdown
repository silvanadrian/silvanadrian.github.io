---
layout: post
title:  "Python oder Node Skript als Systemd Service"
date:   2016-12-05 18:00
lang: de
ref: systemd-service
sitemap:
    priority: 0.8
    changefreq: 'monthly'
    lastmod: 2016-12-05T12:49:30-05:00
---

Kürzlich musste ich ein Python Script und ein Node Script als Service auf einem Ubuntu Serve einrichten, daher un ein Blog Post dazu.



So zu allererst muss eine Service Datei erstellt werden.
{% highlight shell linenos %}sudo nano /lib/systemd/system/example.service{% endhighlight %}


## Service Datei

Und die Service Datei soll folgenden Inhalt haben:

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

Das _/user/bin/python_ kann auch zu jeder anderen Sprache geändert werden (_which python/ruby_).

## Service Access Rights

Nun noch die richtigen Zugriffsrechte setzen.
{% highlight shell linenos %}
sudo chmod 644 /lib/systemd/system/example.service
{% endhighlight %}

## Enable Service

Systemctl reloaden und den Service aktivieren.
{% highlight shell linenos %}
sudo systemctl daemon-reload
 sudo systemctl enable example.service
{% endhighlight %}

## End
Das wars schon nun kann das System neugestartet werden und der Service startet wieder automatisch und die üblichen systemctl command stehen zur Verfügung.

{% highlight shell linenos %}
sudo systemctl start example.service
sudo systemctl stop example.service
sudo systemctl restart example.service
{% endhighlight %}
