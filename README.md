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
| Wednesday, 23/09/2020 | [**Representations, Topology vs Geometry**](lecture-notes/mesh-reconstruction.md) tangents and normals, geometry vs. topology, orientability, discrete topology, graphs <br> _**[HW 02 assigned](https://github.com/alecjacobson/geometry-processing-mesh-reconstruction), due 12:00 noon ET 02/10/2020**_
| Wednesday, 30/09/2020 | [**Acquisition & reconstruction**](lecture-notes/mesh-reconstruction.md), characteristic function, spatial gradient <br> **_[HW 03 assigned](https://github.com/alecjacobson/geometry-processing-registration), due 12:00 noon ET 10/10/2020_**
| Wednesday, 07/10/2020 | [**Alignment & registration**](lecture-notes/registration.md) Hausdorff distance, integrated closest point distance<br> "Object modelling by registration of multiple range images" [Chen & Medioni 1991] <br> "A method for registration of 3-D shapes" [Besl & McKay 1992] <br> "Efficient Variants of the ICP Algorithm" [Rusinkiewicz & Levoy 2001] <br> "Sparse Iterative Closest Point" [Bouaziz et al. 2013] <br> point-to-plane distance, iterative closest point, orthogonal Procrustes problem <br> **_[HW 04 assigned](https://github.com/alecjacobson/geometry-processing-smoothing),  due 12:00 noon ET 19/10/2020_**
| Wednesday, 14/10/2020 | [**Surface fairing & denoising**](lecture-notes/smoothing.md), 1D smoothing flow, 1D energy-based smoothing, PDE, Implicit Time integration <br> **_[HW 05 assigned](https://github.com/alecjacobson/geometry-processing-deformation), tentatively due 12:00 noon ET 27/10/2020_**
| Wednesday, 21/10/2020 | [**Shape deformation**](lecture-notes/deformation.md), continuous deformation, pointwise mappings, energy-based model, handle-based deformation, local distortion mesure, gradient-based distortion, Laplacian-based distortion, as-rigid-as-possible  <br> **_[HW 06 assigned](https://github.com/alecjacobson/geometry-processing-parameterization), due 12:00 noon ET 03/11/2020_** 
| Wednesday, 28/10/2020 | [**Surface parameterization**](lecture-notes/parameterization-ryan-schmidt.pdf), texture mapping, mass-spring methods, graph drawing, harmonic maps, least squares conformal mapping, local parameterization, discrete exponential map, stroke parameterization <br> **_[Final implementation paper signup assigned](https://forms.gle/QM8nvvxRDQrd4ix6A), due 12:00 noon ET 05/11/2020_** <br> [HW 07 (not yet) assigned](https://github.com/alecjacobson/geometry-processing-mesh-reconstruction), tentatively due 12:00 noon ET 06/11/2020
| Wednesday, 04/11/2020 | [**Curvature & surface analysis**](lecture-notes/curvature.md) Planar curves, tangents, arc-length parameterization, osculating circle, curvature, turning number theorem, discrete curvature, normal curvature, minimum/maximum/mean curvature Principal curvature, Gauss map, Euler's theorem, shape operator, Gaussian curvature 
| Wednesday, 11/11/2020 | **_No Lecture: FAS Reading week._** 
| Wednesday, 18/11/2020 | [**Curvature, continued**](lecture-notes/curvature.md) <br> [Possible HW 08 (not yet) assigned](https://github.com/alecjacobson/geometry-processing-mesh-reconstruction), tentatively due 12:00 noon ET 13/11/2020
| Wednesday, 25/11/2020 | [**Signed distances**](lecture-notes/signed-distance.md), Offset surfaces, inside-outside segmentation, medial axis, isosurface/level sets, signed distances to polyhedra, parity counting, winding number <br> "Signed Distance Computation using the Angle Weighted Pseudo-normal" [Baerentzen & Aanaes 2005] <br> "3D distance fields: a survey of techniques and applications" [Jones et al. 2006] <br> "Robust Inside-Outside Segmentation using Generalized Winding Numbers" [Jacobson et al. 2013]
| Wednesday, 02/12/2020 | **Quad meshing**, **Subdivision surfaces**
| Wednesday, 09/12/2020 | **Constructive solid geometry**, **Voxelization**,  **Subdivision surfaces**, **Mesh decimation, simplification, remeshing** <br> **_libigl-style paper implementation due 12:00 noon ET 09/12/2020_**

<!--
> Cutting room floor: **Quad meshing**, **Subdivision surfaces**, **Constructive
> solid geometry**, **Voxelization**,  **Subdivision surfaces**, **Mesh decimation, simplification, remeshing**
-->

## Discord

https://discord.gg/swMZ92H

## Lateness Policy

0.007% off for every minute late.

## Academic Integrity

Any code must belong to the student submitting it. Submitted assignments may be automatically analyzed to identify suspicious levels of code similarity. Consequences of committing an academic offence can be severe.

By staying enrolled in this course, students acknowledge that they have read and understand the University of Toronto's definitions and policy on Academic Integrity.

## Supplemental Textbook

[_Polygon Mesh
Processing_](https://www.amazon.ca/Polygon-Mesh-Processing-Mario-Botsch/dp/1568814267/).
Mario Botsch, Leif Kobbelt, Mark Pauly, Pierre Alliez, and Bruno Levy, 2008.

## Grading

- 73% small assignments (equal weighting per-assignment)
- 17% libigl-style paper implementation
- 10% [Toronto Geometry Colloquium](https://toronto-geometry-colloquium.github.io/) participation

## Final Paper Implementation

[Sign up by 12 noon 05/11/2020](https://forms.gle/QM8nvvxRDQrd4ix6A)

 - A concise and provably informative multi‐scale signature based on heat diffusion
 - A Laplacian for Nonmanifold Triangle Meshes
 - A Symmetric Objective Function for ICP 
 - An Adaptive Multi-Grid Solver for Applications in Computer Graphics
 - Anisotropic geometric diffusion in surface processing
 - Appearance Mimicking Surfaces
 - Biharmonic Distance
 - Can Mean-Curvature Flow be Modified to be Non-singular?
 - Complementary Dynamics
 - Compressed manifold harmonics
 - Compressed vibration modes of elastic bodies
 - Cubic Stylization
 - Deep Geometric Texture Synthesis
 - Developability of Heightfields via Rank Minimization
 - Diffusion Curves: A Vector Representation for Smooth-Shaded Images
 - Discrete Differential Operators on Polygonal Meshes
 - Fast Approximation of Laplace-Beltrami Eigenproblems
 - Gaussian-Product Subdivision Surfaces
 - Harmonic Triangulations
 - Instant Field-Aligned Meshes
 - Interpolated Corrected Curvature Measures for Polygonal Surfaces
 - Laplace Operators for Tetrahedral Meshes
 - LSMAT Least Squares Medial Axis Transform
 - Make it stand: balancing shapes for 3D fabrication
 - Monte Carlo Geometry Processing: A Grid-Free Approach to PDE-Based Methods on Volumetric Domains
 - Packing Irregular Objects in 3D Space via Hybrid Optimization
 - Parallel Globally Consistent Normal Orientation of Raw Unorganized Point Clouds
 - Phong Deformation: A Better CO Interpolant for Embedded Deformation
 - SAL: Sign Agnostic Learning of Shapes from Raw Data
 - Signing the Unsigned: Robust Surface Reconstruction from Raw Pointsets
 - Stable Neo-Hookean Flesh Simulation
 - Stripe Patterns on Surfaces
 - Surface Reconstruction Based on Modified Gauss Formula
 - Variational Surface Cutting
 - Vector Heat Method
 - You Can Find Geodesic Paths in Triangle Meshes by Just Flipping Edges


<!-- 
cat header.md README.md | multimarkdown --process-html -o README.html && open README.html
-->
