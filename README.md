# Video Frame Display Server

## Overview
This project sets up a web server on a Linux host(AWS EC2 instance) using Ansible and Docker to display the latest frame from a live MJPEG stream. NGINX serves the webpage while ffmpeg processes the video stream to extract and update the displayed frame.

## Requirements
- A Linux host with SSH access.
- Ansible 2.9 or higher.
- Docker installed on the host machine.

## Used Tools
- Docker: Used to containerize the ffmpeg processing logic which extracts frames from the MJPEG stream.
- Ansible: Automates the setup and deployment process, including Docker and NGINX installation and configuration.

## The frame is displayed at the root level (index)
The Ansible playbook configures the NGINX web server to serve a custom index.html from the root directory (/var/www/html).

## Changing the NGINX configuration without affecting availability
Both Docker and Nginx services are enabled using Ansible Handlers, ensuring that the services will start automatically after system reboots.  
*Note: In case of Nginx configuration changes, please uncomment "Nginx hot reload" task in the playbook, so that new configuration changes do not require Nginx server restart.*

## Demo
The video frame displayed by the NGINX web server is accessible through the public IP address of the EC2 instance. To view the latest video frame, simply navigate to:

> http://44.208.35.79/