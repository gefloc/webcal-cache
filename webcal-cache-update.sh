#! /bin/bash

#download ics files
wget "https://www.feiertage-deutschland.de/kalender-download/ics/feiertage-deutschland.ics" -O ~/ical/example.ics

#delete ics file backups
rm -f ~/ical/*.ics.1


