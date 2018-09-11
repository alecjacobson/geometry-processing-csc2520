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

### Final Project Idea: point based geometry processing

![](images/point-based-manifold-harmonics.jpg)

"Point-Based Manifold Harmonics"  
[Liu et al. 2012]

### Final Project Idea: Approximate geodesic distances on surfaces

<iframe width="560" height="315"
src="https://www.youtube.com/embed/aCSxkfducnw" frameborder="0"
allowfullscreen></iframe>

"Geodesics in Heat: A New Approach to Computing Distance Based on Heat Flow"  
[Crane et al. 2013]

### Final Project Idea: robust smoothing

<iframe width="560" height="315"
src="https://www.youtube.com/embed/mIUi1zIUQJw" frameborder="0"
allowfullscreen></iframe>

"Robust Fairing via Conformal Curvature Flow"  
[Crane et al. 2013]  

![](images/can-mean-curvature-flow-lucy.jpg)

"Can Mean-Curvature Flow Be Made Non-Singular?"  
[Kazhdan et al. 2012]

### Final Project Idea: non-rigid alignment

<iframe width="560" height="315"
src="https://www.youtube.com/embed/wLXtZes2ojQ" frameborder="0"
allowfullscreen></iframe>

"Global correspondence optimization for non-rigid registration of depth scans"  
[Li et al. 2008]

<iframe width="560" height="315"
src="https://www.youtube.com/embed/ii2vHBwlmo8" frameborder="0"
allowfullscreen></iframe>

"Sparse Iterative Closest Point"
[Bouaziz et al. 2013]


### Other ideas

- Segmentation of interior and exterior of triangle soup meshes
  "Robust Inside-Outside Segmentation using Generalized Winding Numbers"
  [Jacobson et al. 2013]

- Interactive animation and posing by linearly blending handle transformations
  "Bounded Biharmonic Weights for Real-Time Deformation"
  [Jacobson et al. 2013]

- Physically based simulation of 1D space curves ("rods")
  "Discrete Elastic Rods"
  [Bergou et al. 2008]

- Building a table of counterexamples for discrete Laplacians
  "Discrete Laplace operators: No free lunch"
  [Wardetzky et al. 2007]

- Modal analysis for deformation. "Good vibrations: modal dynamics for graphics
  and animation" [Pentland & Williams 1989], "Real-Time Subspace Integration
  for St.Venant-Kirchhoff Deformable Models" [Barbič & James 2005] 

- Efficient solver for Poisson Surface Reconstruction
  "Screened Poisson Surface Reconstruction" [Kazhdan & Hoppe 2013]
  "Parallel Poisson Surface Reconstruction" [Bolitho et al. 2009]
  "Poisson Surface Reconstruction" [Kazhdan et al. 2006]
