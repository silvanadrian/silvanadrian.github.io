---
layout: post
title:  "LaTex Dokumente mit Gulp typesetten"
date:   2016-12-06 14:00
lang: de
ref: latex-gulp
sitemap:
    priority: 0.8
    changefreq: 'monthly'
    lastmod: 2016-12-06T12:49:30-05:00
---

Es ist sehr einfach Gulp für das typesetten von LaTex Dokumenten zu verwenden, was ich auch getan habe für meine Bachelor Arbeit.

Also zu allererst muss es möglich sein das LaTex Dokument über das CLI (Command Line Interface) typesetten zu können, dazu verwendete ich _latexmk_, was sehr einfach zu benutzen ist.
Dabei soll es möglich sein ein Glossar oder Literaturverzeichnis einzubinden, dadurch muss das Dokument 3 Mal typesetted werden.


{% highlight bash linenos %}
#.latexmkrc
$pdflatex = 'pdflatex -interaction=nonstopmode -shell-escape';

add_cus_dep('glo', 'gls', 0, 'makeglossaries');
sub makeglossaries {
	system("makeglossaries \"$_[0]\"");
}
{% endhighlight %}


Zusätzlich benötigen wir ein Makefile um _latexmk_ aufzurufen.


{% highlight makefile linenos %}
TEX=pdflatex

all:
	latexmk -pdf -r .latexmkrc main

main:
	$(TEX) -interaction=nonstopmode -halt-on-error -shell-escape main.tex

{% endhighlight %}

Zum Schluss wird natürlich noch ein _Gulfile.js_ benötigt, welches den _make_ Befehl ausführt.

Now at last we can use _Gulp_, for this we need to create a _Gulpfile.js_.
{% highlight javascript linenos %}
var gulp = require('gulp');
var shell = require('gulp-shell');
var notify = require("gulp-notify");

gulp.task('latex', function() {
    return gulp.src('*.tex', {read: false})
    .pipe(shell(["make"],{quiet: true})
    .on('error', notify.onError({
			title: "Compiling Failed",
			message: "Latex Document couldn't get typesetted.",
      "sound": "Sosumi"
		})
  ))
    .pipe(notify({
      title: "Compiling Succeded!",
      message: "Documentation has been typesetted Succesfully!",
      "sound": "Pop"
      }
    ))
});

gulp.task('watch', function() {
    gulp.watch('**/*.tex', ['latex']);
});
{% endhighlight %}

Zur Erweiterung habe ich noch _gulp-notify_ verwendet um über Erfolg oder Misserfolg des typsetten zu berichten und  _watch_ um über Änderungen an LaTex Dateien auf dem laufenden zu bleiben.
