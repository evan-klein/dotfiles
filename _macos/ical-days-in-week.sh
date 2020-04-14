#!/bin/sh

# Check this script is running on macOS
if [ `uname` != "Darwin" ]; then
	echo 'Unsupported operating system'
	exit 1
fi

osascript -e 'quit app "Calendar"'
defaults write com.apple.iCal n\ days\ of\ week $1
open -a Calendar
