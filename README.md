# C++ Two- and Three-Body Gravitational Orbit Simulation

A two-dimensional Newtonian orbit simulator developed by Siheng Zhao for **DATASCI 2G03 - Scientific Computing** at McMaster University in 2024.

This repository preserves the course project's C++ source, original makefile, and written report. The project began with two-body systems and was extended to three-body motion. It later motivated the separate [Python three-dimensional N-body project](https://github.com/Charlie-Zhao-666/N-Body-Simulation).

中文简介：这是 DATASCI 2G03 课程中的二维牛顿引力轨道模拟项目，包含二体与三体模式、轨道可视化，以及能量和动量诊断。后续的 Python 三维 N 体模拟由这一课程经历与 PHYSICS 3D03 的学习进一步发展而来。

## Files

| File | Contents |
| --- | --- |
| [orbit.cpp](orbit.cpp) | The original C++ source retrieved from the course server |
| [makefile](makefile) | The original course-server build configuration |
| [Project report](Project_Report.pdf) | The original English course report, with the student number removed from page headers |

## Model and numerical method

- Newtonian gravity and equations of motion in the x-y plane.
- Two- and three-body modes with preset cases and a user-defined configuration.
- Fixed-step Leapfrog in kick-drift-kick (KDK) form.
- PGPLOT plots of trajectories, total energy, and total momentum diagnostics.
- A stop condition when the distance between two bodies reaches the sum of their specified radii; post-collision dynamics are not modeled.

The supplied source retains its saved initial-condition values. The report describes configurations explored during the project; these can differ from the source's current user-defined defaults.

## Building and running

The original environment was the university's Linux course server. The program uses C++11, the C interface to PGPLOT (`cpgplot.h`), and an X11 plotting display. The original makefile links `trapfpe`, `pgplot`, `cpgplot`, `X11`, and `m`.

In an environment providing those headers and libraries:

```sh
make
./orbit
```

At startup, choose the two- or three-body mode and a model from the displayed menu. Simulation duration, time step, and user-defined initial conditions are configured in `orbit.cpp`.

The original makefile is preserved rather than replaced with a portable build system; library paths and the course-specific `trapfpe` dependency may require adjustment on another computer.

## Report

[Read the 47-page English project report](Project_Report.pdf). It contains the project explanation, numerical experiments, plots, accuracy discussion, and a code listing.

The public PDF preserves the original page layout and author attribution. Only the student number in its headers was removed. The original private files are not part of this repository.

## Verification and project history

The archived `orbit.cpp` passed a read-only C++11 syntax check in the original course-server environment on 27 October 2026. This publication did not rerun the full interactive plotting experiment.

This is the earlier **2D C++ course project**. The ongoing **3D Python N-body work**, including adaptive time-step research, is documented in the separate repository linked above.

Author: **Siheng Zhao**
