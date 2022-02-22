#!/bin/bash
sudo modprobe bcm2835-v4l2
nohup /home/pi/picam_livestream/runserver.sh > /home/pi/picam_livestream/server-nohup.log &
echo $! > save_pid_server.txt

nohup /home/pi/plant-live-viewing/runupload.sh > /home/pi/plant-live-viewing/upload-data-nohup.log &
echo $! > save_pid_upload.txt

