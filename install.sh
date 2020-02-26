# Timer installation. Requires sudo
DESTDIR=/usr/bin/
# Alarm location
ALARMDIR=~/music/
# Allows anyone to execute
PERMISSIONS=755
# Give permissions
chmod $PERMISSIONS timer
# Move timer to bin
sudo cp timer $DESTDIR
# Create directory for alarm
mkdir -p $ALARMDIR
# Copy alarm to new directory
cp alarmCalm.mp3 $ALARMDIR
