# Autonomous-System-Implementation-on-Drone

## Overview
This repository focuses on implementing an autonomous system for drones. It includes MATLAB scripts for various aspects of drone control and navigation in simulated and real environments.

## Files
- `main/`: Core scripts for the drone system.
- `maze/`: Scripts for generate and save 3D maze.
Navigation algorithms for maze environments.
- `hoops/`: Scripts for detect and save hoops position.
Scripts for navigating through hoops.
- `scripts/A_star/`: Implements A* algorithm.
- `scripts/gen_routes/`: Generates A* routes for navigating 3D maze.
- `scripts/gen_trajactory/`: Generates CHOMP trajectory for navigating hoops.
- `scripts/plot/`: Plots real and simulate trajactory of drone.
- `simulation/`: Simulation environment setups.
- `position/`: Save real and simulate trajactory of drone.

## Requirements
- MATLAB, with add-on: **Simulink**, **Optimization Toolbox**, and **ROS Toolbox**

## Installation
```bash
git clone https://github.com/kristian-267/Autonomous-System-Implementation-on-Drone.git
```

## Usage
1. Navigate the 3D maze:
- Generate 3D maze: Run `maze/generate_wall.m`
- Load parameters: Run `main/uas_nav_maze.m`
- Connect the drone and navigate: Run `simulation/uas_nav_maze.slx`

2. Hover the drone:
- Load parameters: Run `main/uas_hover.m`
- Connect the drone and hover: Run `simulation/uas_hover.slx`

3. Navigate the hoops:
- Detect the positon of hoops: Run `hoops/uas_get_hoops.m`
- Load parameters: Run `main/uas_nav_hoops.m`
- Connect the drone and navigate: Run `simulation/uas_nav_hoops.slx`
