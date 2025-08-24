#! /bin/bash

#stop & delete services
systemctl stop webcal-cache-server
systemctl stop webcal-cache-update
rm -f /etc/systemd/system/webcal-cache-server.service /etc/systemd/system/webcal-cache-update.service /etc/systemd/system/webcal-cache-update.timer
systemctl daemon-reload

#delete user
deluser webcal-cache --remove-home


