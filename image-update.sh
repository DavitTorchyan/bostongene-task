#!/bin/bash
while true; do
  ffmpeg -y -i http://webcam.mchcares.com/mjpg/video.mjpg -frames:v 1 /data/latest.jpg
  sleep 1
done