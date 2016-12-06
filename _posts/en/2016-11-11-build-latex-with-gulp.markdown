---
layout: post
title:  "Typeset LaTex Documents with Gulp"
date:   2016-11-11 14:00
lang: en
ref: latex-gulp
sitemap:
    priority: 0.8
    changefreq: 'monthly'
    lastmod: 2016-11-11T12:49:30-05:00
---

It's quite easy to use Gulp to typeset LaTex files with Gulp and I actually used it for my Bachelor Thesis.

Okay so first of all we want to be able to typeset LaTex Files over the CLI and it should be possible to include a Bibliography and a Glossary which means the Document has to be typesetted 3 times.
For this I used latexmk which is easy use.


{% highlight bash %}
#.latexmkrc
$pdflatex = 'pdflatex -interaction=nonstopmode -shell-escape';

add_cus_dep('glo', 'gls', 0, 'makeglossaries');
sub makeglossaries {
	system("makeglossaries \"$_[0]\"");
}
{% endhighlight %}

Now we need to create a Makefile to call _latexmk_, which is pretty Straight forward.

{% highlight makefile %}
TEX=pdflatex
GLO=makeglossaries

all:
	latexmk -pdf -r .latexmkrc main

main:
	$(TEX) -interaction=nonstopmode -halt-on-error -shell-escape main.tex

glo:
	$(GLO) main
{% endhighlight %}

Now at last we can use _Gulp_, for this we need to create a _Gulpfile.js_.
