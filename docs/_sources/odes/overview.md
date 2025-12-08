# Project Overview

A C++ package for solving ordinary differential equations (ODEs), developed in
the context of the **Numerical Simulation and Scientific Computing I** course
by Prof. Joachim Schöberl at TU Wien.

This documentation complements the Team 10 fork of the upstream project
[ASC-ODE](https://github.com/TUWien-ASC/ASC-ODE):

- Upstream project: <https://github.com/TUWien-ASC/ASC-ODE>
- Team 10 fork (implementation repository):  
  <https://github.com/Stefmeff/ASC-ODE-team-10>

The repository contains:

- Time-stepping schemes for ODEs (Euler variants, implicit Runge–Kutta),
- Model problems (mass–spring system and RC circuit / electric network),
- An automatic differentiation module,
- Plotting scripts and generated plots under `outputs/` and `outputs/plots/`.

All numerical results and figures used in this documentation are generated with
the Team 10 code base and stored in the implementation repository under:

- Text / numeric outputs: `outputs/`
- Generated figures:
  - `outputs/plots/` (mass–spring, Legendre, etc.)
  - `outputs/ElectricNetwork/plots/` (electric network / RC circuit)