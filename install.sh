# Timer installation. Requires sudo
# UPDATE: no longer requires sudo, just does a local install
# However, you will need to type the following command to add it to the path:
DESTDIR=~/bin/
# Alarm location
ALARMDIR=~/Music/basic-timer-alarm/
# Allows anyone to execute
PERMISSIONS=755
# Give permissions
chmod $PERMISSIONS timer
# Create directories
mkdir -p $DESTDIR
mkdir -p $ALARMDIR

# Adds bin to $PATH if it isn't already there
	if [ -d "$DESTDIR" ] && [[ ":$PATH:" != *":$DESTDIR:"* ]]; then
		echo export PATH=$PATH:$DESTDIR >> ~/.bashrc
	fi
source ~/.bashrc

# Move timer to bin
cp timer $DESTDIR
# Copy alarm to new directory
cp alarmCalm.mp3 $ALARMDIR

echo "All done, simply run 'source ~/.bashrc' and give the command a try!"
