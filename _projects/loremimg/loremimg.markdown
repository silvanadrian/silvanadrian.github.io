---
layout: project
title:  "loremimg"
date:   2016-03-11 13:33:44
excerpt: "REST API to get resized Images "
github-url: "https://github.com/silvanadrian/loremimg"
frontimage: { url: '/img/projects/loremimg/lorempixel.svg', lgsize: 12 , mdsize: 12, smsize: 12, xssize: }
sideimage:
- '/img/projects/loremimg/lorempixel.svg'
---

### Description ###


A very simple REST API which can return uploaded Images in every Size needed (inspired by lorempixel).  
Each Image belongs to a Category and has a name (unique) which allows to choose the image to show with it's name.

#### Homepage

Returns Random full Image

{% highlight nginx %}
GET http://example.com/
{% endhighlight %}

####  Full Image

Returns full Image from the name (unique)

{% highlight nginx %}
GET http://example.com/<name>/
{% endhighlight %}

#### Square Image

Returns one of the uploaded Images as a Square Image (random)

{% highlight nginx %}
GET http://example.com/<width>/
{% endhighlight %}

#### Square Image Specific

Returns specific Image as Square Image

{% highlight nginx %}
GET http://example.com/<width>/<name>/
{% endhighlight %}

#### Rectangle Image

Returns one of the uploaded Images as a Rectangle Image (random)

{% highlight nginx %}
GET http://example.com/<width>/<height>/
{% endhighlight %}

#### Rectangle Image Specific

Returns Specific Image as Rectangle Image

{% highlight nginx %}
GET http://example.com/<width>/<height>/<name>
{% endhighlight %}

#### Category

Returns Random full Image from Category

{% highlight nginx %}
GET http://example.com/category/<category>/
{% endhighlight %}

#### Category Square

Returns Random square Image from Category

{% highlight nginx %}
GET http://example.com/category/<category>/<width>/
{% endhighlight %}


#### Category Rectangle

Returns Random rectangle Image from Category

{% highlight nginx %}
GET http://example.com/category/<category>/<width>/<height>/
{% endhighlight %}

#### Example Usages

{% highlight html %}
<img src="http://example.com/200/" />
<img src="http://example.com/200/400" />
<img src="http://example.com/category/various/" />
<img src="http://example.com/category/various/200/" />
<img src="http://example.com/category/various/200/400" />
{% endhighlight %}

### Type of work

Development

### Technologies

Python  
Django  
Django REST framework

### Links

The Source Code of the Project is hosted on Github  
[Github loremimg](https://github.com/silvanadrian/loremimg)
