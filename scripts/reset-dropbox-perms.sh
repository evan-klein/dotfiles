#!/bin/sh

# Check this script is running on macOS
if [ `uname` != "Darwin" ]; then
	echo 'Unsupported operating system'
	exit 1
fi

echo 'Changing owner to "evan" and group to "staff"...'
sudo chown -R evan:staff ~/Production\ Control\ Dropbox/Evan\ Klein/
echo

echo 'Changing permissions to 755...'
sudo chmod -R 755 ~/Production\ Control\ Dropbox/Evan\ Klein/
echo

echo "✅"
