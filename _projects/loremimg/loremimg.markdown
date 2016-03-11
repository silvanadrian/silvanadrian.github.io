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

### Description ###


A very simple REST API which can return uploaded Images in every Size needed (inspired by lorempixel).  
Each Image belongs to a Category and has a name (unique) which allows to choose the image to show with it's name.

#### Homepage

Returns Random full Image

```
GET http://example.com/
```

####  Full Image

Returns full Image from the name (unique)

```
GET http://example.com/<name>/
```

#### Square Image

Returns one of the uploaded Images as a Square Image (random)

```
GET http://example.com/<width>/
```

#### Square Image Specific

Returns specific Image as Square Image

```
GET http://example.com/<width>/<name>/
```

#### Rectangle Image

Returns one of the uploaded Images as a Rectangle Image (random)

```
GET http://example.com/<width>/<height>/
```

#### Rectangle Image Specific

Returns Specific Image as Rectangle Image

```
GET http://example.com/<width>/<height>/<name>
```

#### Category

Returns Random full Image from Category

```
GET http://example.com/category/<category>/
```

#### Category Square

Returns Random square Image from Category

```
GET http://example.com/category/<category>/<width>/
```


#### Category Rectangle

Returns Random rectangle Image from Category

```
GET http://example.com/category/<category>/<width>/<height>/
```

#### Example Usages

```html
<img src="http://example.com/200/" />
<img src="http://example.com/200/400" />
<img src="http://example.com/category/various/" />
<img src="http://example.com/category/various/200/" />
<img src="http://example.com/category/various/200/400" />
```

### Type of work

Development

### Technologies

Python  
Django  
Django REST framework

### Links

The Source Code of the Project is hosted on Github
[Github loremimg](https://github.com/silvanadrian/loremimg)
