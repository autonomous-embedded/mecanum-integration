#!/bin/bash

source ./high-level-system-4wd-mecanum/devel/setup.bash

roslaunch mecanum_bringup mecanum_vision.launch initial_reset:=True enable_accel:=False enable_color:=True enable_confidence:=False enable_depth:=False enable_gyro:=False enable_infra1:=False enable_infra2:=False enable_pointcloud:=False enable_pose:=False enable_sync:=False
