title: Geometry Processing – Deformation
author: Alec Jacobson
html header:  <link rel="stylesheet" href=../style.css>
<link rel="stylesheet" href=style.css>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>

# [Geometry Processing](../index.html) – Deformation

## Wikipedia progress?

[Geometry processing: Revision history](https://en.wikipedia.org/w/index.php?title=Geometry_processing&action=history)

Needs **images**!

Needs **citations**!

## Final project ideas

- Robust [TetGen](http://wias-berlin.de/software/tetgen/) using irrational
  numbers. [Si 2015].

![](images/rotund-man-tetmesh.gif)

- "Per-face classification of two-sided sheets vs oriented solid-boundary
  surfaces" (Machine Learning!)
    - [ShapeNet](https://www.shapenet.org/)
    - [Thingi10K](https://ten-thousand-models.appspot.com/)

![](images/sailboat-sheet-vs-solid.jpg)

## Parameterization homework

[readme](https://github.com/alecjacobson/geometry-processing-parameterization)


## Goal: remove noise

![](images/plane-smooth-geometry.gif)

## Goal: (non-rigid) registration to another shape

<iframe width="560" height="315" src="https://www.youtube.com/embed/7vkfyCutBjY" frameborder="0" allowfullscreen></iframe>

## Goal: flattening onto the plane

![](images/ogre-flatten.gif)

## Goal: changing features of an existing shape ~sculpting~

![](images/max-nose-deformation.jpg)


## Goal: combine/extend/fill holes in existing shapes

![](images/venus-willmore-flow-hole-fill.jpg)

## Goal: reposing or iterating a design of an existing shape

![](images/iwires-gallery.jpg)

## Goal: reposing or iterating a design of an existing shape

<video controls loop>
<source src=videos/armadillo-editing-make-it-stand.mov>
</video>

## Goal: animation

<iframe width="560" height="315"
src="https://www.youtube.com/embed/hldCtjT9baI" frameborder="0"
allowfullscreen></iframe>

## Goal: physical effects

<video controls loop>
<source src=videos/big-buck-bunny-torus-sphere-hyperelastic-materials.mp4>
</video>


## Handle-based deformation: selected transformed regions

![](images/goblin-primo.jpg)

![](images/car-botsch-handle-deformation.jpg)

## Handle-based deformation: sketched curves

![](images/head-silsketch.jpg)

## Handle-based deformation: skeletons

```
/usr/local/igl/libigl-examples/skeleton-poser/build/skeleton_poser /usr/local/igl/libigl-examples/shared/decimated-knight{.obj,.tgf}
```



<script>
var images = $("figure img");
$.each(images, function() {
    $(this).replaceWith($("<a href='"+this.src+"'>"+this.outerHTML+"</a>"));
    });
</script>
