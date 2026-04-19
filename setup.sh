#!/bin/bash

echo "Cloning Poky (scarthgap)..."
git clone -b scarthgap git://git.yoctoproject.org/poky.git

echo "Cloning meta-raspberrypi (scarthgap)..."
git clone -b scarthgap git://git.yoctoproject.org/meta-raspberrypi.git

echo "Done! Now run: ./init.sh"