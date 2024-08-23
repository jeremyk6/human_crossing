#!/bin/bash

cd scripts

python3 00a_prepare.py $1
python3 00b_pre_process.py $1
python3 01_street.py $1
python3 02_pedestrian_crossing.py $1
python3 03_island_split.py $1
python3 04_point_overlay_bus.py $1
python3 05_sidewalk_line.py $1
python3 06a_buildings.py $1
python3 06b_green.py $1
python3 07_assembly.py $1