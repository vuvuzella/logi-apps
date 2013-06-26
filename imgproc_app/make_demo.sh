#!/bin/sh
logi_loader ./logipi_camera.bit
pacman -S gcc
pacman -S make
pacman -S v4l-utils
pacman -S libjpeg-turbo
cd ../tools/logi-mjpg-streamer/
./fix_dependency.sh
make -j2
echo "Demo will now start :"
echo "Open a browser and connect to http://<your raspberry ip address>:8080/stream.html"
echo "Press PB2 on logibone to switch between video source (normal, gaussian, sobel, harris)"
echo "Press ctrl-c to end demo"
./launch_streamer.sh 0
