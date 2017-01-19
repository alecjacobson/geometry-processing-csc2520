title: Geometry Processing – Mesh Reconstruction
author: Alec Jacobson
html header:  <link rel="stylesheet" href=../style.css>
<link rel="stylesheet" href=style.css>
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>


# [Geometry Processing](../index.html) – Mesh Reconstruction

## Wikipedia progress?

[Geometry processing: Revision history](https://en.wikipedia.org/w/index.php?title=Geometry_processing&action=history)

[Geometry processing category](https://en.wikipedia.org/wiki/Category:Geometry_processing)

## Klein bottle

<video controls loop autoplay>
<source src=videos/klein-bottle.m4v>
</video>

[+plus magazine](https://plus.maths.org/content/introducing-klein-bottle)

![](images/klein-bottle.gif)

[imgur](http://imgur.com/2QvVTzp)


## Sphere eversion

<iframe width="560" height="315"
src="https://www.youtube.com/embed/R_w4HYXuo9M" frameborder="0"
allowfullscreen></iframe>

## Coffee Mug → Donut

<iframe width="560" height="315"
src="https://www.youtube.com/embed/9NlqYr6-TpA?start=43" frameborder="0"
allowfullscreen></iframe>

![](images/coffee-mug-to-donut.gif)

[Wikipedia](https://en.wikipedia.org/wiki/Genus\_(mathematics))

## Facebook graph

![](images/facebook-graph.jpg)

[source](https://admin.mashable.com/wp-content/uploads/2010/12/fb-relationships-full.jpg)


## Game of thrones character graph

Has _undirected_ and directed edges:

![](images/game-of-thrones-graph.png)

[source](http://cdn.collider.com/wp-content/uploads/2016/06/game-of-thrones-jon-snow-legacy.png)

## Right-hand rule for mesh orientations

![](images/right-hand-rule.jpg)

[source](https://raw.githubusercontent.com/alecjacobson/geometry-processing-introduction/master/images/right-hand-rule.jpg)

## Half-edges on mesh

![](images/half-edges-on-mesh.jpg)

[source](https://raw.githubusercontent.com/alecjacobson/geometry-processing-introduction/master/images/half-edges.jpg)


## Ivan Sutherland's Sketchpad

<iframe width="560" height="315"
src="https://www.youtube.com/embed/USyoT_Ha_bA?start=354" frameborder="0"
allowfullscreen></iframe>

[Sketchpad: A man-machine graphical communication system](https://www.cl.cam.ac.uk/techreports/UCAM-CL-TR-574.pdf)

## "Scanning" a car

![](images/sutherland-measuring-a-beetle.jpg)

[source](http://iasl.uni-muenchen.de/links/GCAPDF/GCAPDF-IV.2e.html)

![](images/sutherland-measuring-a-beetle-02.jpg)

[source](http://www.computerhistory.org/revolution/computer-graphics-music-and-art/15/206)

## Poisson Surface Reconstruction

![](images/armadillo-poisson-surface-reconstruction.jpg)

[Kazhdan et al. 2006]




















<script>
var images = $("figure img");
$.each(images, function() {
    $(this).replaceWith($("<a href='"+this.src+"'>"+this.outerHTML+"</a>"));
    });
</script>
