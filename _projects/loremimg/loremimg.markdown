---
layout: project
title:  "loremimg"
date:   2016-03-11 13:33:44
excerpt: "REST API to get resized Images "
github-url: "https://github.com/silvanadrian/loremimg"
frontimage: { url: '/img/projects/loremimg/lorempixel.png', lgsize: 12 , mdsize: 12, smsize: 12, xssize: }
sideimage:
- '/img/projects/loremimg/lorempixel.png'
---
<h3>Description</h3>

A very simple REST API which can return uploaded Images in every Size needed (inspired by lorempixel).  
Each Image belongs to a Category and has a name (unique) which allows to choose the image to show with it's name.

<h4>Homepage</h4>
Returns Random full Image

```ApacheConf
GET http://example.com/
```
<br>
<h4>Full Image</h4>
Returns full Image from the name (unique)  
```ApacheConf
GET http://example.com/<name>/
```
<br>
<h4>Square Image</h4>
Returns one of the uploaded Images as a Square Image (random)
```
GET http://example.com/<width>/
```
<br>
<h4>Square Image Specific</h4>
Returns specific Image as Square Image
```
GET http://example.com/<width>/<name>/
```
<br>
<h4>Rectangle Image</h4>
Returns one of the uploaded Images as a Rectangle Image (random)  
```
GET http://example.com/<width>/<height>/
```
<br>
<h4>Rectangle Image Specific</h4>
Returns Specific Image as Rectangle Image
```
GET http://example.com/<width>/<height>/<name>
```
<br>
<h4>Category</h4>
Returns Random full Image from Category
```
GET http://example.com/category/<category>/
```
<br>
<h4>Category Square</h4>
Returns Random square Image from Category
```
GET http://example.com/category/<category>/<width>/
```
<br>
<h4>Category Rectangle</h4>
Returns Random rectangle Image from Category
```
GET http://example.com/category/<category>/<width>/<height>/
```
<br>
<h4>Example Usages</h4>
```html
<img src="http://example.com/200/" />
<img src="http://example.com/200/400" />
<img src="http://example.com/category/various/" />
<img src="http://example.com/category/various/200/" />
<img src="http://example.com/category/various/200/400" />
```
<h3>Type of work</h3>

Development

<h3>Technologies</h3>
Python  
Django  
Django REST framework

<h3>Links</h3>
The Source Code of the Project is hosted on Github   
<a target="_blank" href="https://github.com/silvanadrian/loremimg">Github loremimg</a>
