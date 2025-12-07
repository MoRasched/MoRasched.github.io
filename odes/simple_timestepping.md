# Some simple time-stepping methods

We implement and test several basic time-stepping methods introduced in the
JupyterBook:

- [Explicit & Improved Euler](https://jschoeberl.github.io/IntroSC/ODEs/implementation_ee.html)
- [Implicit Euler & Crank–Nicolson](https://jschoeberl.github.io/IntroSC/ODEs/implementation_ie.html)

Our focus is on their application to the **mass–spring system** and on how the
number of time steps affects stability and accuracy.

## Explicit and Improved Euler

For an IVP \( \dot{y} = f(t, y) \), the explicit Euler method updates via:

\[
y^{n+1} = y^n + \Delta t\, f(t^n, y^n).
\]

The improved Euler (Heun) method uses an average of slopes to obtain a
second-order method.

### Notes for this project

- We apply **Explicit Euler** and **Improved Euler** to the **mass–spring**
  system.
- We vary the number of steps \(N\) (step size \(\Delta t = T/N\)) to study
  the effect on
  - Phase plots \((x, v)\),
  - Position–time diagrams \(x(t)\).
- The corresponding C++ implementations are integrated into the generic
  timestepper framework and tested via `demos/test_ode.cpp`.

## Implicit Euler and Crank–Nicolson

Implicit Euler uses:

\[
y^{n+1} = y^n + \Delta t\, f(t^{n+1}, y^{n+1}),
\]

which generally requires solving a nonlinear system at each step. The
Crank–Nicolson method averages the right-hand side at \(t^n\) and \(t^{n+1}\).

### Notes for this project

- We implement **Implicit Euler** and **Crank–Nicolson** for the mass–spring
  system, following the JupyterBook exercises.
- Nonlinear systems arising from implicit methods are solved using a
  **Newton method** (implemented in `src/Newton.hpp`).
- The mass–spring example is used as a benchmark to compare:
  - stability,
  - phase portraits,
  - energy behavior, as in the JupyterBook.

Further details on the implementation and code structure are collected in the
[Implementation](implementation.md) chapter.