---
layout: post
title:  "Python or Node Skript as Systemd Service"
date:   2016-12-05 14:00
lang: de
ref: systemd-service
sitemap:
    priority: 0.8
    changefreq: 'monthly'
    lastmod: 2016-12-05T12:49:30-05:00
---

It's quite easy to use Gulp to typeset LaTex files with Gulp and I actually used it for my Bachelor Thesis.

Okay so first of all we want to be able to typeset LaTex Files over the CLI (Command Line Interface) and it should be possible to include a Bibliography and a Glossary which means the Document has to be typesetted 3 times.
For this I used _latexmk_ which is easy use.


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

all:
	latexmk -pdf -r .latexmkrc main

main:
	$(TEX) -interaction=nonstopmode -halt-on-error -shell-escape main.tex

{% endhighlight %}

Now at last we can use _Gulp_, for this we need to create a _Gulpfile.js_.
{% highlight javascript %}
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

So I just used Shell to execute the Shell command make (which uses the Makefile) and use _gulp-notify_ to send a Notify Message if typesetting was possible or not.
Additional to that using the _watch_ command to check if any files changed and if one has changed run the make command.
