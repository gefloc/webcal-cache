#! /bin/bash

#add user webcal-cache
adduser webcal-cache --disabled-login --comment "webcal-cache"

#populate home dir
mkdir -p /home/webcal-cache/ical/
touch /home/webcal-cache/ical/index.html
cp webcal-cache-server.conf /home/webcal-cache/

#copy programs
cp --no-preserve=owner webcal-cache-update.sh /home/webcal-cache/
chown webcal-cache:webcal-cache /home/webcal-cache/*
chmod +x /home/webcal-cache/webcal-cache-update.sh

#copy systemd service files
cp --no-preserve=owner webcal-cache-server.service webcal-cache-update.service webcal-cache-update.timer /etc/systemd/system

#enable services
systemctl daemon-reload
systemctl enable webcal-cache-server
systemctl enable webcal-cache-update
