# Design of Dynamic Positioning System - Marine Control

This repository hosts the project "Dynamic Positioning System for Marine Vessels," which focuses on the design, modeling, and implementation of a dynamic positioning (DP) system. The system leverages MATLAB, Simulink, and the MSS Toolbox to ensure robust vessel positioning in challenging environmental conditions.

---

## Table of Contents
1. [Overview](#overview)
2. [Modeling and Design](#modeling-and-design)
   - [Reference Frames](#reference-frames)
   - [Plant Models](#plant-models)
   - [Environmental Loads](#environmental-loads)
   - [Reference Trajectory](#reference-trajectory)
3. [Control System](#control-system)
   - [Observers](#observers)
   - [Controllers](#controllers)
4. [Thrust Allocation](#thrust-allocation)
5. [Simulations](#simulations)
6. [Results and Conclusion](#results-and-conclusion)
7. [Dependencies](#dependencies)
8. [License](#license)

---

## Overview

Dynamic positioning (DP) systems maintain a vessel's position and heading without requiring anchors. This project develops a robust DP system capable of counteracting wind, waves, and current disturbances, enabling reliable operation under diverse marine conditions.

---

## Modeling and Design

### Reference Frames
1. **Earth-Fixed Frame (NED)**: Defines global positioning in North-East-Down coordinates.
2. **Body-Fixed Frame**: Describes vessel dynamics in Surge-Sway-Yaw axes.
   - **Transformation Matrix**: Converts between NED and body-fixed frames for accurate modeling.

### Plant Models
1. **Process Plant**: Represents full vessel dynamics using a 6-DOF motion equation, including inertia, damping, and environmental forces.
2. **Control Plant**: Simplifies the process plant for control design, modeling low-frequency and wave-frequency dynamics.

### Environmental Loads
Environmental forces include:
- **Currents**: Simulated with 2D surface flows.
- **Wind**: Modeled with Harris spectrum for gust effects.
- **Waves**: Defined using the ITTC spectrum for significant wave height and peak periods.

### Reference Trajectory
Smooth trajectory generation ensures seamless transitions through acceleration, cruising, deceleration, and stabilization phases.

---

## Control System

### Observers
1. **Extended Kalman Filter (EKF)**: Provides high accuracy but requires complex tuning.
2. **Nonlinear Passive Observer (NPO)**: Offers global convergence with simpler tuning and was selected for its robustness.

### Controllers
1. **PID Controller**: Simple implementation, limited for complex dynamics.
2. **Linear Quadratic Gaussian (LQG)**: Achieves optimal performance with efficient tuning and was chosen as the primary controller.

---

## Thrust Allocation

The thrust allocation algorithm optimally distributes control forces among multiple thrusters, considering:
- Overactuation and physical constraints.
- Power consumption minimization and response time optimization.

---

## Simulations

Key simulations validated the system's performance under various conditions:
1. Environmental forces acting without control.
2. Full DP system testing with chosen controller and observer.
3. Thrust allocation strategies under normal and failure conditions.
4. Capability plots and robustness evaluation under extreme conditions.

---

## Results and Conclusion

- The LQG controller and NPO observer demonstrated excellent performance in maintaining position and heading.
- The thrust allocation algorithm efficiently managed thruster outputs, even during failure scenarios.
- The system proved robust against severe environmental disturbances, ensuring reliability for marine operations.

---

## Dependencies

- **MATLAB** (R2020 or later)
- **Simulink**
- **MSS Toolbox**

---

