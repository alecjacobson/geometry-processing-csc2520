title: Geometry Processing – Alignment and Registration
author: Alec Jacobson
html header:  <link rel="stylesheet" href=../style.css>
<link rel="stylesheet" href=style.css>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>

# [Geometry Processing](../index.html) – Smoothing

## Guest lecture next week

[Ryan Schmidt](http://www.rms80.com)

## Wikipedia progress?

[Geometry processing: Revision history](https://en.wikipedia.org/w/index.php?title=Geometry_processing&action=history)

Needs images!

[Geometry processing category](https://en.wikipedia.org/wiki/Category:Geometry_processing)

Category entry mining?

## HW01

[HW01](https://github.com/alecjacobson/geometry-processing-introduction)

## "wrapping up" registration 

[new notes for last lecture](registration.html#sofienbouazizsphdthesis)


### Smoothing 

### Smoothing a data signal _on_ a surface

![](images/plane-smooth-signal.gif)

### Smoothing _a surface itself_

![](images/plane-smooth-geometry.gif)


## Smoothing 1D data

[MATLAB Demo](/Applications/MATLAB_R2017a.app)

### Small stable explicit time step

![](images/1d-smoothing-explicit-stable.gif)

### Small unstable explicit time step

![](images/1d-smoothing-explicit-unstable.gif)

### Big stable implicit time step

![](images/1d-smoothing-implicit.gif)

<script>
var images = $("figure img");
$.each(images, function() {
    $(this).replaceWith($("<a href='"+this.src+"'>"+this.outerHTML+"</a>"));
    });
</script>
