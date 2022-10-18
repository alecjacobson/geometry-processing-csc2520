# Geometry Processing

![](images/libigl-teaser.jpg)

Fall Term 2022  
CSC419H1 Geometry Processing  
CSC2520H Geometry Processing  
Prof. Alec Jacobson  
TAs, Frank Liu, Otman Benchekroun, Samarendra Dash  
Lecutures: Tuesdays 3-5 [LM 158](https://map.utoronto.ca/?id=1809#!m/494502)  
Office Hours: Tuesdays 5-5:30, Wednesdays 5-5:30  
Tutorials: Thursdays 4-5 UC 179

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
algorithm.

Through attendence of invited Toronto Geometry talks, students will be exposed to a wide variety of cutting-edge research in geometry processing.

Students sharpen crystalize their knowledge and sharpen their presentation skills by creating short explainer videos for geometry processing concepts.

<!-- Through the **_weekly_** seminars at the [Toronto Geometry
Colloquium](https://toronto-geometry-colloquium.github.io/), students will be
exposed to a wide variety of cutting-edge research in geometry processing.-->

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
| Tuesday, 13/09/2022 | [**Geometry Processing Pipeline**](lecture-notes/introduction.md), "life of a shape", shapes, surface representations, <br> _Polygon Mesh Processing_ [Botsch et al. 2008] <br> _**[Intro Survey](https://forms.gle/S4EofeYBD2DyKyKu6), due 12:00 noon ET 20/09/2022**_ <br> _**[HW 01 assigned](https://github.com/alecjacobson/geometry-processing-introduction), due 12:00 noon ET 20/09/2022**_
| Tuesday, 20/09/2022 | [**Representations, Topology vs Geometry**](lecture-notes/mesh-reconstruction.md) tangents and normals, geometry vs. topology, orientability, discrete topology, graphs <br> _**[HW 02 assigned](https://github.com/alecjacobson/geometry-processing-mesh-reconstruction), due 12:00 noon ET 28/09/2022 (extended by one day)**_
| Tuesday, 27/09/2022 | [**Acquisition & reconstruction**](lecture-notes/mesh-reconstruction.md), characteristic function, spatial gradient <br> **_[HW 03 assigned](https://github.com/alecjacobson/geometry-processing-registration), due 12:00 noon 05/10/2022_**
| Tuesday, 04/10/2022 | [**Alignment & registration**](lecture-notes/registration.md) Hausdorff distance, integrated closest point distance<br> "Object modelling by registration of multiple range images" [Chen & Medioni 1991] <br> "A method for registration of 3-D shapes" [Besl & McKay 1992] <br> "Efficient Variants of the ICP Algorithm" [Rusinkiewicz & Levoy 2001] <br> "Sparse Iterative Closest Point" [Bouaziz et al. 2013] <br> point-to-plane distance, iterative closest point, orthogonal Procrustes problem <br> **_[HW 04 assigned](https://github.com/alecjacobson/geometry-processing-smoothing),  due 12:00 noon 14/10/2022_**
| Tuesday, 11/10/2022 | [**Surface fairing & denoising**](lecture-notes/smoothing.md), 1D smoothing flow, 1D energy-based smoothing, PDE, Implicit Time integration <br> **_[HW 05 assigned](https://github.com/alecjacobson/geometry-processing-deformation), due 12:00 noon 21/10/2022_**
| Tuesday, 18/10/2022 | [**Shape deformation**](lecture-notes/deformation.md), continuous deformation, pointwise mappings, energy-based model, handle-based deformation, local distortion mesure, gradient-based distortion, Laplacian-based distortion, as-rigid-as-possible  <br> **_[HW 06 assigned](https://github.com/alecjacobson/geometry-processing-parameterization), due 12:00 noon 28/10/2022_** <br> [Final Paper Implementation Paper Selection Form](https://forms.gle/w1fmaRWAG52mVNp88), due 12:00 noon 28/10/2022_**
| Tuesday, 25/10/2022 | [**Surface parameterization**](lecture-notes/parameterization-ryan-schmidt.pdf), texture mapping, mass-spring methods, graph drawing, harmonic maps, least squares conformal mapping, local parameterization, discrete exponential map, stroke parameterization <br> **_[Final implementation paper signup assigned](https://forms.gle/QM8nvvxRDQrd4ix6A), due TBD_** 
| Tuesday, 01/11/2022 | [**Curvature & surface analysis**](lecture-notes/curvature.md) Planar curves, tangents, arc-length parameterization, osculating circle, curvature, turning number theorem, discrete curvature, normal curvature, minimum/maximum/mean curvature Principal curvature, Gauss map, Euler's theorem, shape operator, Gaussian curvature <br> **_[HW 07 assigned](https://github.com/alecjacobson/geometry-processing-curvature),  due TBD_**
| Tuesday, 08/11/2022 | **_No Lecture: FAS Reading week._** 
| Tuesday, 15/11/2022 | [**Signed distances**](lecture-notes/signed-distance.md), Offset surfaces, inside-outside segmentation, medial axis, isosurface/level sets, signed distances to polyhedra, parity counting, winding number <br> "Signed Distance Computation using the Angle Weighted Pseudo-normal" [Baerentzen & Aanaes 2005] <br> "3D distance fields: a survey of techniques and applications" [Jones et al. 2006] <br> "Robust Inside-Outside Segmentation using Generalized Winding Numbers" [Jacobson et al. 2013]
| _Wednesday, 16/11/2022_ | _[Last day to drop course](https://www.artsci.utoronto.ca/current/dates-deadlines/academic-dates#academic-dates-deadlines-accordion-7)_
| Tuesday, 22/11/2022 | TBD
| Tuesday, 29/12/2022 | Signed distances continued. Outlook into geometry processing research.
| Tuesday, 06/12/2022 | Video party <br> **_[libigl-style paper implementation](https://github.com/alecjacobson/geometry-processing-libigl-implementations) due TBD_**


> Cutting room floor: **Quad meshing**, **Subdivision surfaces**, **Constructive
> solid geometry**, **Voxelization**, **Mesh decimation, simplification, remeshing**


## Discord

https://discord.gg/j7auSYUC

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
- 18% [libigl-style paper implementation](https://github.com/alecjacobson/geometry-processing-libigl-implementations)
- 9% explainer videos, seminar attendance

## Explainer Videos

An explainer is a short (< 4m minutes) video provides an introduction to or a summary of a topic. Using motion graphics, animation and/or narration, create a compelling video.

Upload the video on youtube. Be sure to include links to an videos or source material that you took inspiration from in your video description. Post a link on the discord channel. 

Over the course of the semester you must create _**two unique videos**_ for any of the topics introduced in the lecture, homeworks or linked readings. It's recommended that you make _**one 30-sec TikTok style video**_ that's over the top exciting and for a general audience. And _**one 4-min youtube-style video**_ where you explain a bit more than just hype.

### Examples

- [Dirac Belt Trick](https://www.youtube.com/watch?v=JDJKfs3HqRg)
- [Sphere Eversion](https://www.youtube.com/watch?v=OI-To1eUtuU)
- [Punctured Torus Eversion](https://www.youtube.com/watch?v=q0Y-qjXLslM)
- [Mathematical Magic: Undoing Handcuffs](https://www.youtube.com/watch?v=wDZx9B4TAXo)
- [Euler's Formula V - E + F = 2 | Proof](https://www.youtube.com/watch?v=80EazC2_0Qo)
- [Delaunay Triangulation](https://www.youtube.com/watch?v=NcAKzVoFbVI)
- [Voronoi diagrams](https://www.youtube.com/watch?v=Q804hv73L6U)

Got other great examples? Submit a PR on this README.md with a link!

## Final Paper Implementation

Tentative list of papers:

 - [A Laplacian for Nonmanifold Triangle Meshes](https://www.cs.cmu.edu/~kmcrane/Projects/NonmanifoldLaplace/NonmanifoldLaplace.pdf)
 - [A concise and provably informative multi‐scale signature based on heat diffusion](http://www.lix.polytechnique.fr/~maks/papers/hks.pdf)
 - [Anisotropic geometric diffusion in surface processing](http://www.cs.jhu.edu/~misha/ReadingSeminar/Papers/Clarenz00.pdf)
 - [Appearance Mimicking Surfaces](https://cims.nyu.edu/gcl/papers/mimicking-2014.pdf)
 - [Can Mean-Curvature Flow be Modified to be Non-singular?](http://www.cs.jhu.edu/~misha/MyPapers/SGP12.pdf)
 - [Complementary Dynamics](https://www.dgp.toronto.edu/projects/complementary-dynamics/complementary-dynamics.pdf)
 - [Compressed manifold harmonics](https://gvv.mpi-inf.mpg.de/files/CMM14.pdf)
 - [Compressed vibration modes of elastic bodies](https://research.tudelft.nl/en/publications/compressed-vibration-modes-of-elastic-bodies)
 - [Deep Geometric Texture Synthesis](https://arxiv.org/pdf/2007.00074.pdf)
 - [Developability of Heightfields via Rank Minimization](http://dgp.toronto.edu/~sgsellan/pdf/compressed-developables-low-res.pdf)
 - [Dynamic Kelvinlets: Secondary Motions based on Fundamental Solutions of Elastodynamics](https://graphics.pixar.com/library/DynaKelvinlets/paper.pdf)
 - [Fast Approximation of Laplace-Beltrami Eigenproblems](https://graphics.tudelft.nl/~klaus/papers/fastSpectrum.pdf)
 - [Fast Quasi-Harmonic Weights for Geometric Data Interpolation](https://people.csail.mit.edu/jsolomon/assets/quasiharmonic.pdf)
 - [Fast and Robust QEF Minimization using Probabilistic Quadrics](https://graphics.rwth-aachen.de/media/papers/308/probabilistic-quadrics.pdf)
 - [Gaussian-Product Subdivision Surfaces](https://publik.tuwien.ac.at/files/publik_282850.pdf)
 - [Harmonic Triangulations](https://dl.acm.org/doi/pdf/10.1145/3306346.3322986)
 - [Instant Neural Graphics Primitives with a Multiresolution Hash Encoding](https://nvlabs.github.io/instant-ngp/assets/mueller2022instant.pdf)
 - [Interpolated Corrected Curvature Measures for Polygonal Surfaces](https://perso.liris.cnrs.fr/david.coeurjolly/publication/lachaud2022/)
 - [LSMAT Least Squares Medial Axis Transform](https://arxiv.org/abs/2010.05066)
 - [Laplace Operators for Tetrahedral Meshes](https://igl.ethz.ch/projects/LB3D/LB3D.pdf)
 - [Learning Smooth Neural Functions via Lipschitz Regularization](https://www.dgp.toronto.edu/~hsuehtil/pdf/lipmlp.pdf)
 - [Make it stand: balancing shapes for 3D fabrication](https://igl.ethz.ch/projects/make-it-stand/make-it-stand-siggraph-2013-prevost-et-al.pdf)
 - [Neural Jacobian Fields: Learning Intrinsic Mappings of Arbitrary Meshes
 - [Parallel Globally Consistent Normal Orientation of Raw Unorganized Point Clouds](https://onlinelibrary.wiley.com/doi/full/10.1111/cgf.13797)
 - [Phong Deformation: A Better CO Interpolant for Embedded Deformation](https://graphics.pixar.com/library/PhongDefo/paper.pdf)
 - [Repulsive Curves](https://www.cs.cmu.edu/~kmcrane/Projects/RepulsiveCurves/RepulsiveCurves.pdf)
 - [SAL: Sign Agnostic Learning of Shapes from Raw Data](https://arxiv.org/abs/1911.10414)
 - [Signing the Unsigned: Robust Surface Reconstruction from Raw Pointsets](https://hal.inria.fr/inria-00502473/document)
 - [Stable Neo-Hookean Flesh Simulation](https://graphics.pixar.com/library/StableElasticity/paper.pdf)
 - [Surface Reconstruction Based on Modified Gauss Formula](https://dl.acm.org/doi/10.1145/3233984)
 - [Variational Surface Cutting](https://www.cs.cmu.edu/~kmcrane/Projects/VariationalCuts/)
 - [Vector Heat Method](https://arxiv.org/pdf/1805.09170.pdf)
 - [You Can Find Geodesic Paths in Triangle Meshes by Just Flipping Edges](https://www.cs.cmu.edu/~kmcrane/Projects/FlipOut/FlipOut.pdf)
](https://arxiv.org/pdf/2205.02904.pdf)

<!-- 
cat header.md README.md | multimarkdown --process-html -o README.html && open README.html
-->
