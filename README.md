# Geometry Processing

![](images/libigl-teaser.jpg)

Fall Term 2020  
CSC419H1 Geometry Processing  
CSC2520H Geometry Processing  
Prof. Alec Jacobson  
TAs, Sarah Kushner, Jiayi Eris Zhang  
W 3-5 Zoom  
Office Hours: W 5-6 Zoom

The class is aimed at preparing students for working with geometric data via
understanding fundamental theoretical concepts. Students should have a
background in _Linear Algebra_ and _Computer Programming_. Previous
experience with _Numerical Methods_, _Differential Equations_, and _Differential
Geometry_ is appreciated but not required.

Extending traditional signal processing, _geometry processing_ interprets
three-dimensional curves and surfaces as signals. Just as audio and image
signal data can be filtered, denoised and decomposed spectrally, so can the
geometry of a three-dimensional curve or surface.

In this course, we study the algorithms and mathematics behind fundamental
operations for interpreting and manipulating geometric data. These essential
tools enable: geometric modeling for computer aided design, life-like
animations for computer graphics, reliable physical simulations,  and robust
scene representations for computer vision.

Topics include: discrete curves and surfaces, curvature computation, surface
reconstruction from point clouds, surface smoothing and denoising, mesh
simplification, parameterization, symmetry detection, shape deformation and
animation.


## Organization

In lecture we will cover the mathematical background and visual intuition of the
week's topic. Students will **_read academic papers_** and complete a
small **_weekly_** programming assignment to implement a corresponding
algorithm. Through the **_weekly_** seminars at the [Toronto Geometry
Colloquium](https://toronto-geometry-colloquium.github.io/), students will be
exposed to a wide variety of cutting-edge research in geometry processing.
Finally, students will implement a recent paper in the style of a [libigl
tutorial](https://libigl.github.io/tutorial/).

## Objectives

 1. Students should understand, derive, and implement solutions to the
 prominent challenges that arise in geometry processing applications.
 2. Students should create a final creative project showcasing their
 implementation of the different processing algorithms.
 3. Students should develop an understanding of the mathematical underpinnings
 of geometry processing including useful discretized operators and energies.
 4. Students should develop a working knowledge of
 [libigl](http://libigl.github.io/libigl/) to develop these algorithms without
 worrying about the grunt-work of
 [OpenGL](https://en.wikipedia.org/wiki/OpenGL) viewers, quadrature, etc.

## Prerequisites

Students should have already taken **Linear Algebra** and **Calculus**.

Students should have already taken **Introduction to Computer Science** and
should be _proficient_ in computer programming (in any language) and should
feel comfortable programming in **C++**.

While knowledge of **Partial Differential Equations** _is not required_, it will
certainly be very handy for derivations. A quick survey will be posted to help
students evaluate their readiness on these topics.

On the programming side, we will be coding mainly in **C++** and using a
[libigl](http://libigl.github.io/libigl/), an open-source geometry processing
library. We will be using [Eigen](http://eigen.tuxfamily.org) for computational
linear algebra, and [Cmake](http://cmake.org) for building the coding
assignments.

## A Mathematical Foundation

Much of the framing for our techniques will be looking at the continuous
analogue of our problem and discretizing it in an intrinsic way, preserving
continuous theorems as much as possible. We will discretize continuous
operators like the Laplacian and the Gradient, and we will find adequate
representations of concepts like normal vectors and curvature. Perhaps
surprisingly we will see that there are many choices of discretization, each
with their own benefits and downsides, prompting us to choose appropriately for
the particular application.

## Schedule

| Lecture Date          | Tentative Topic |
|:----------------------|:--|
| Wednesday, 16/09/2020 | [**Geometry Processing Pipeline**](lecture-notes/introduction.md), "life of a shape", shapes, surface representations, <br> _Polygon Mesh Processing_ [Botsch et al. 2008] <br> _**[Intro Survey](https://forms.gle/xvFbFWJqKvfXMT317), due 12:00 noon ET 22/09/2020**_ <br> _**[HW 01 assigned](https://github.com/alecjacobson/geometry-processing-introduction), due 12:00 noon ET 22/09/2020**_
| Wednesday, 23/09/2020 | tangents and normals, geometry vs. topology, orientability, discrete topology, meshes, data structures 
| Wednesday, 30/09/2020 | [**Acquisition & reconstruction**](lecture-notes/mesh-reconstruction.md), characteristic function, spatial gradient
| Wednesday, 07/10/2020 | [**Alignment & registration**](lecture-notes/registration.md) Hausdorff distance, integrated closest point distance<br> "Object modelling by registration of multiple range images" [Chen & Medioni 1991] <br> "A method for registration of 3-D shapes" [Besl & McKay 1992] <br> "Efficient Variants of the ICP Algorithm" [Rusinkiewicz & Levoy 2001] <br> "Sparse Iterative Closest Point" [Bouaziz et al. 2013] <br> point-to-plane distance, iterative closest point, orthogonal Procrustes problem
| Wednesday, 14/10/2020 | [**Surface fairing & denoising**](lecture-notes/smoothing.md), 1D smoothing flow, 1D energy-based smoothing, PDE, Implicit Time integration
| Wednesday, 21/10/2020 | [**Shape deformation**](lecture-notes/deformation.md), continuous deformation, pointwise mappings, energy-based model, handle-based deformation, local distortion mesure, gradient-based distortion, Laplacian-based distortion, as-rigid-as-possible 
| Wednesday, 28/10/2020 | [**Surface parameterization**](lecture-notes/parameterization-ryan-schmidt.pdf), texture mapping, mass-spring methods, graph drawing, harmonic maps, least squares conformal mapping, local parameterization, discrete exponential map, stroke parameterization 
| Wednesday, 04/11/2020 | [**Curvature & surface analysis**](lecture-notes/curvature.md) Planar curves, tangents, arc-length parameterization, osculating circle, curvature, turning number theorem, discrete curvature, normal curvature, minimum/maximum/mean curvature Principal curvature, Gauss map, Euler's theorem, shape operator, Gaussian curvature 
| Wednesday, 11/11/2020 | **_No Lecture: FAS Reading week._** 
| Wednesday, 18/11/2020 | [**Curvature, continued**](lecture-notes/curvature.md) 
| Wednesday, 25/11/2020 | [**Signed distances**](lecture-notes/signed-distance.md), Offset surfaces, inside-outside segmentation, medial axis, isosurface/level sets, signed distances to polyhedra, parity counting, winding number <br> "Signed Distance Computation using the Angle Weighted Pseudo-normal" [Baerentzen & Aanaes 2005] <br> "3D distance fields: a survey of techniques and applications" [Jones et al. 2006] <br> "Robust Inside-Outside Segmentation using Generalized Winding Numbers" [Jacobson et al. 2013]
| Wednesday, 02/12/2020 | **Quad meshing**, **Subdivision surfaces**
| Wednesday, 09/12/2020 | **Constructive solid geometry**, **Voxelization**,  **Subdivision surfaces**, **Mesh decimation, simplification, remeshing**

<!--
> Cutting room floor: **Quad meshing**, **Subdivision surfaces**, **Constructive
> solid geometry**, **Voxelization**,  **Subdivision surfaces**, **Mesh decimation, simplification, remeshing**
-->

## Slack

dgp-graphics.slack.com, \#geometry-processing channel, ask dgp member for invite

## Lateness Policy

0.007% off for every minute late.

## Supplemental Textbook

[_Polygon Mesh
Processing_](https://www.amazon.ca/Polygon-Mesh-Processing-Mario-Botsch/dp/1568814267/).
Mario Botsch, Leif Kobbelt, Mark Pauly, Pierre Alliez, and Bruno Levy, 2008.

## Grading

- 73% small assignments
- 17% libigl-style paper implementation
- 10% [Toronto Geometry Colloquium](https://toronto-geometry-colloquium.github.io/) participation


<!-- 
cat header.md README.md | multimarkdown --process-html -o README.html && open README.html
-->
