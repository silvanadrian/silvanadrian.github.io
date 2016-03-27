---
layout: project
title:  "Software Defined Data Center"
date:   2016-01-11 13:33:44
excerpt: "REST API to create Compute, Network, Storage Resources"
github-url: "https://github.com/hsr-sa-hs15-sddc/SDDC"
frontimage: { url: '/img/projects/sddc/SDDC.png', lgsize: 12 , mdsize: 12, smsize: 12, xssize: }
sideimage:
- '/img/projects/sddc/admin-dashboard.png'
---

### Description ###

<div class="row">
<div class="col-md-7 col-sm-6">
A REST API which access the underlying GenericAPI to provision Compute, Network and Storage Resources.
But since the Time was short we used a simple API to build upon the libvirt API (KVM/XEN/VMware ESX).<br>
It's possible to extend the Software with other API's like <a href="https://jclouds.apache.org/" reL="nofollow">jclouds</a> which would extend the
Software with the possibility to provision Cloud Hoster Resources.<br>
As an addition the Software also has a very simple and easy User Dashboard (Self-Service) and a Admin Dashboard to administrate the software.
</div>
<br>
<div class="col-md-5 col-sm-6">
<img src="/img/projects/sddc/architecture.png" alt="Architecture Overview" />
</div>
</div>

### REST API

Abstraction for Services, Ordered Services and Service Modules.

#### Service

Return List with all Services

{% highlight nginx %}
GET http://example.com/api/services
{% endhighlight %}

Create new Service

{% highlight nginx %}
POST http://example.com/api/services/new
{% endhighlight %}

Order Service

{% highlight nginx %}
POST http://example.com/api/services/<id>
{% endhighlight %}

Update Service

{% highlight nginx %}
PUT http://example.com/api/services/<id>
{% endhighlight %}

Get Service

{% highlight nginx %}
GET http://example.com/api/services/<id>
{% endhighlight %}

Delete Service

{% highlight nginx %}
DELETE http://example.com/api/services/<id>
{% endhighlight %}

#### OrderedService

Get OrderedServices

{% highlight nginx %}
GET http://example.com/api/orderedservices
{% endhighlight %}

Get OrderedService

{% highlight nginx %}
GET http://example.com/api/orderedservices/<id>
{% endhighlight %}

Cancel OrderedService

{% highlight nginx %}
DELETE http://example.com/api/orderedservices/<id>
{% endhighlight %}

#### ServiceModule

Get ServiceModules

{% highlight nginx %}
GET http://example.com/api/servicemodules
{% endhighlight %}

Get ServiceModule

{% highlight nginx %}
GET http://example.com/api/servicemodules/<id>
{% endhighlight %}

Update ServiceModule

{% highlight nginx %}
PUT http://example.com/api/servicemodules/<id>
{% endhighlight %}

Delete ServiceModule

{% highlight nginx %}
DELETE http://example.com/api/servicemodules/<id>
{% endhighlight %}

Create ServiceModule

{% highlight nginx %}
POST http://example.com/api/servicemodules/new
{% endhighlight %}

Get all Providers which are suported by the libaries

{% highlight nginx %}
GET http://example.com/api/servicemodules/providers
{% endhighlight %}

Get all Sizes

{% highlight nginx %}
GET http://example.com/api/servicemodules/sizes
{% endhighlight %}

Get all Categories

{% highlight nginx %}
GET http://example.com/api/servicemodules/caegories
{% endhighlight %}


#### Generic API

This is the API which makes the calls on the libaries (libvirt).

##### Create
Creates Resource according to Configfile from Module.

{% highlight java %}
Identifier create(ServiceModule module);
{% endhighlight %}

##### Delete
Deletes Resource according to *Identifier*.

{% highlight java %}
void delete(Identifier identifier);
{% endhighlight %}

##### Get Informations

Gets All Possible informations for a Resource (RAM, vCpus, Disk Size).

{% highlight java %}
Map<String, String> getInformations(Identifier identifier);
{% endhighlight %}


### Type of work

Development
Design

### Technologies

Java  
Java Spring  
AngularJS

### Links

The Source Code of the Project is hosted on Github  
[Github SDDC](https://github.com/hsr-sa-hs15-sddc/SDDC)
