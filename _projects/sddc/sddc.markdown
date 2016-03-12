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

```http
GET http://example.com/api/services
```

Create new Service

```HTTP
POST http://example.com/api/services/new
```

Order Service

```HTTP
POST http://example.com/api/services/{id}
```

Update Service

```HTTP
PUT http://example.com/api/services/{id}
```

Get Service

```HTTP
GET http://example.com/api/services/{id}
```

Delete Service

```HTTP
DELETE http://example.com/api/services/{id}
```

#### OrderedService

Get OrderedServices

```HTTP
GET http://example.com/api/orderedservices
```

Get OrderedService

```HTTP
GET http://example.com/api/orderedservices/{id}
```

Cancel OrderedService

```HTTP
DELETE http://example.com/api/orderedservices/{id}
```

#### ServiceModule

Get ServiceModules

```HTTP
GET http://example.com/api/servicemodules
```

Get ServiceModule

```HTTP
GET http://example.com/api/servicemodules/{id}
```

Update ServiceModule

```HTTP
PUT http://example.com/api/servicemodules/{id}
```

Delete ServiceModule

```HTTP
DELETE http://example.com/api/servicemodules/{id}
```

Create ServiceModule

```HTTP
POST http://example.com/api/servicemodules/new
```

Get all Providers which are suported by the libaries

```HTTP
GET http://example.com/api/servicemodules/providers
```

Get all Sizes

```HTTP
GET http://example.com/api/servicemodules/sizes
```

Get all Categories

```HTTP
GET http://example.com/api/servicemodules/caegories
```


#### Generic API

This is the API which makes the calls on the libaries (libvirt).

##### Create
Creates Resource according to Configfile from Module.

```java
Identifier create(ServiceModule module);
```

##### Delete
Deletes Resource according to *Identifier*.

```java
void delete(Identifier identifier);
```

##### GetInformations
Gets All Possible informations for a Resource (RAM, vCpus, Disk Size).

```java
Map<String, String> getInformations(Identifier identifier);
```


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
