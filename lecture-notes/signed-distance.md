title: Geometry Processing – Signed Distances
author: Alec Jacobson
html header:  <link rel="stylesheet" href=../style.css>
<link rel="stylesheet" href=style.css>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>

# [Geometry Processing](../index.html) – Signed Distances

## Final Projects

### Presentations

10 mins, hard limit

Try to save a minute or two for questions

(ask questions; recall 20% of grade is participation)

### Extended abstract

Practice formal presentation

### Deadlines

 - 25/4 SIGGRAPH Posters
 - 10/4 SGP Papers → Posters
 - 14/4 SCA Papers, 26/5 Posters 

**_All materials due Friday 6/4(April)/2018_**

## Wikipedia

[Geometry Processing on wikipedia](https://en.wikipedia.org/wiki/Geometry_processing)

Last chance. Currently sitting around 50%

- Love the images
- How about references to relevant papers?

## Cutting room floor

### Segmentation

![](images/consensus-segmentation.jpg)

### Shape correspondence

![](images/functional-maps.jpg)

### Co-analysis

![](images/active-co-analysis.jpg)

### Mesh simplification

![](images/fertility-edge-collapse.gif)

### Remeshing

![](images/max-remeshing.jpg)

### Quad meshing

![](images/mixed-integer-quadrangulation.jpg)

### Volume meshing

![](images/rotund-man-tetmesh.gif)

### Subdivision surfaces

![](images/chimp-subdivision.gif)

----------------------------------------------------------

## Feature Sensitive Surface Extraction

![](images/feature-sensitive-surface-extraction.jpg)

<script>
var images = $("figure img");
$.each(images, function() {
    $(this).replaceWith($("<a href='"+this.src+"'>"+this.outerHTML+"</a>"));
    });
</script>
