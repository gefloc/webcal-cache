#! /bin/bash

calendars=(
	"https://www.feiertage-deutschland.de/kalender-download/ics/feiertage-deutschland.ics"
)

#download ics files
for c in "${calendars[@]}"; do
	wget -P ~/ical/ "$c"
done

#delete backups
rm -f ~/ical/*.ics.1


