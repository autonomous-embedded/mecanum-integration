# Mecanum 4WD - Embedded Systems 2 - AGH - 2023/2024

Repository for the high-level and low-level control system for a 4WD mecanum car. Developed for the "Embedded Systems 2" class in the Cyber-Physical Systems specialization for Automation and Robotics, Faculty of Electrical Engineering, Automatics, Computer Science and Biomedical Engineering.

Authored by: Natalia Pluta, Robert Koziarski, Mateusz Saternus.

## Tech stack

High-level system:
 - ROS Noetic (ROS1)
 - Language of implementation: C++

Low-level system:
 - Arduino (PlatformIO)
 - Language of implementation: Embedded C

## Hardware

High-level system:
 - Jetson Orin NX (some custom BSP - don't recall which one)
 - Intel Realsense Depth Camera D435i

Low-level system:
 - some old Arduino board + extension board

## Platform

For the high-level system, it's best to go with Ubuntu 20.04 LTS. Anything else has not been supported. Ever. And probably won't be.

## How to work with this repository?

To start working, clone the repository by running: `git clone --recurse-submodules git@github.com:autonomous-embedded/mecanum-integration.git`.

After you've cloned this repository, you can start working with the source code & the documentation we have. You'll probably need to install some dependencies.

## Dependencies

### High-level system

You will need these for sure:
 - ROS Noetic
 - librealsense

### Low-level system

 - dunno

