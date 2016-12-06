---
layout: post
title:  "Python or Node Script as Systemd Service"
date:   2016-12-05 14:00
lang: en
ref: systemd-service
sitemap:
    priority: 0.8
    changefreq: 'monthly'
    lastmod: 2016-12-05T12:49:30-05:00
---


Lately I needed to be able to autorun Python or Node Scripts as a systemd Service on a Ubuntu Server.

So first of all you need to create a new Service file  {% highlight shell %}sudo nano /lib/systemd/system/myscript.service{% endhighlight %}


And the Service File needs to be filled with:

{% highlight bash %}

{% endhighlight %}
