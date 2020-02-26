# Timer installation. Requires sudo
DESTDIR=/usr/bin/
# Allows anyone to execute
PERMISSIONS=755
# Give permissions
chmod $PERMISSIONS timer
# Move to bin
sudo cp timer $DESTDIR

