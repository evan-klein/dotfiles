# macOS setup checklist

## macOS installation

- [ ] Install macOS updates
- [ ] Sign out of Adobe Creative Cloud
- [ ] Sign out of iCloud
- [ ] Shutdown
- [ ] Start recovery
	- Apple silicon:
		- Press and hold the power button until "Loading startup options..." appears, then click `Options`
	- Intel Macs:
		- `Command` + `Option` + `R` = the latest version
		- `Shift` + `Command` + `Option` + `R` = the version that came with your Mac or the closest thing still available
- [ ] Format the hard drive in Disk Utility
- [ ] Reboot
- [ ] Start recovery (again)
- [ ] Format the hard drive in Disk Utility (again)
- [ ] Install macOS
	- [ ] Skip iCloud sign in
- [ ] Install updates

## Skip to...

- [ ] [Turn on the firewall](#firewall)
- [ ] [Turn on the FileVault](#filevault)
- [ ] [Install Firefox](#firefox)
- [ ] [Install 1Password](#1password)
- [ ] [Install the 1Password Firefox extension](#1password-firefox-extension)
- [ ] [Install iTerm2](#iterm2) (which also installs git)

## System preferences

#### System Preferences

- Apple ID
	- [ ] Sign in to iCloud
	- iCloud
		- [ ] Photos: unchecked
		- [ ] Keychain: unchecked
		- [ ] Private Relay (Beta): unchecked
		- [ ] Hide My Email: unchecked
		- [ ] iCloud Drive: checked
		- [ ] iCloud Mail: unchecked
		- [ ] Contacts: checked
		- [ ] Calendars: checked
		- [ ] Reminders: checked
		- [ ] Notes: checked
		- [ ] Safari: checked
		- [ ] Find My Mac: checked
		- [ ] News: checked
		- [ ] Stocks: checked
		- [ ] Home: checked
		- [ ] Siri: checked
- Desktop & Screen Saver
	- Desktop
		- Custom Color...
			- [ ] #19202e
	- Screen Saver
		- [ ] Screen Saver Options...
		- [ ] Show screen saver after: 5 Minutes
		- [ ] Show with clock: checked
		- Hot Corners...
			- [ ] Top-left: Put Display to Sleep
			- [ ] Bottom-left: Start Screen Saver
			- [ ] Top-right: Mission Control
			- [ ] Bottom-right: Desktop
- Desktop & Dock
	- Widgets
		- [ ] Dim widgets on desktop: Never
- Dock & Menu Bar
	- Sound
		- [ ] Show in Menu Bar: checked
		- [ ] Drop-down menu: always
	- Battery
		- [ ] Show Percentage: checked
	- Clock
		- [ ] Display the time with seconds: checked
- Notifications & Focus
	- Notifications
		- [ ] Show previews: when unlocked
		- Allow notifications:
			- [ ] When the display is sleeping: unchecked
			- [ ] When the screen is locked: unchecked
			- [ ] When mirroring or sharing the display: unchecked
	- Focus
		- Options...
			- [ ] Allow time sensitive notifications: checked
			- [ ] Allow calls from: Favorites
			- [ ] Allow repeated calls: checked
		- [ ] Turn On Automatically: 10:00 PM-7:00 AM
		- [ ] Share Focus Status: unchecked
		- [ ] Share across devices: unchecked
- Security & Privacy
	- General
		- [ ] Require password 5 seconds after sleep or screen saver begins: checked
<span id="filevault"></span>
	- FileVault
		- [ ] Turn on FileVault
<span id="firewall"></span>
	- Firewall
		- [ ] Turn on the firewall
- Network
	- [ ] Limit IP Address Tracking: unchecked
- Bluetooth
	- [ ] Show Bluetooth in menu bar: checked
- Keyboard
	- Text
		- [ ] Add [text snippets](https://github.com/evan-klein/email/blob/master/text-snippets.md)
		- [ ] Correct spelling automatically: unchecked
		- [ ] Capitalize words automatically: unchecked
		- [ ] Add period with double-space: unchecked
		- [ ] Use smart quotes and dashes: unchecked
	- Input Sources
		- [ ] Show Input menu in menu bar: checked
- Displays
	- Night Shift
		- [ ] Schedule: Sunset to Sunrise
- Printers & Scanners
	- [ ] Add printer(s)
- Battery
	- Power Adapter
		- [ ] Turn display off after: 25 min
		- [ ] Prevent your Mac from automatically sleeping when the display is off: checked
		- [ ] Wake for network access: checked
- Sharing
	- [ ] Verify computer name
	- [ ] Screen Sharing: checked
	- [ ] File Sharing: checked
	- [ ] AirPlay Receiver: unchecked

#### Bash profile

- [ ] Run:
	```sh
	curl https://raw.githubusercontent.com/evan-klein/dotfiles/master/_macos/.zshrc > ~/.zshrc
	```

#### nanorc

- [ ] Run:
	```sh
	curl https://raw.githubusercontent.com/evan-klein/dotfiles/master/_macos/.nanorc > ~/.nanorc
	```

#### git

- [ ] Install [git](https://git-scm.com/download/mac)
- [ ] Run:
	```sh
	mkdir ~/git/
	git config --global user.name "Evan Klein"
	git config --global user.email "**@e***k****.com"
	sudo chmod -R 777 ~/.config/
	```

#### SSH

- [ ] `mkdir ~/.ssh/`
- [ ] Copy SSH keys
- [ ] Create SSH key for GitHub
	```sh
	ssh-keygen -t ed25519 -N "" -C "**@e***k****.com" -f ~/.ssh/github
	cat ~/.ssh/github.pub
	```
- [ ] [Add SSH key to your GitHub account](https://github.com/settings/keys)
- [ ] Copy [SSH config](https://github.com/prodctrl/.dotfiles/blob/master/cfg/ssh/config)
	```sh
	nano ~/.ssh/config
	```
- [ ] `sudo chmod -R 700 ~/.ssh/`

#### /etc/hosts

- [ ] Run:
	```sh
	curl https://raw.githubusercontent.com/evan-klein/dotfiles/master/hosts > ~/hosts.tmp
	cat ~/hosts.tmp | sudo tee -a /etc/hosts
	rm ~/hosts.tmp
	```

## macOS application preferences

#### Finder

- `Finder` › `Preferences...`
	- General
		- [ ] Show these items on the desktop:
			- [ ] Hard disks: checked
			- [ ] External disks: checked
			- [ ] CDs, DVDs, and iPods: checked
			- [ ] Connected servers: checked
		- [ ] New Finder windows show: evan
	- Sidebar
	- Advanced
		- [ ] Show all filename extensions: checked
		- [ ] When performing a search: Search the Current Folder
- [ ] `View` › `Show Path Bar`
- [ ] `View` › `Show Status Bar`

#### Mail

- [ ] Add accounts (using profiles)
- [ ] Add `All Archive`, `All Junk`, etc to your favorites by hovering over `Favorites` and clicking on the `+` icon
- [ ] `Mail` › `Preferences...`
	- Fonts & Colors
		- [ ] Message font: Helvetica 14
	- Viewing
		- [ ] Show most recent message at the top: checked
	- Composing
		- [ ] Send new messages from s*****t@rundowncreator.com
	- Signatures
		- [ ] Add [signatures](https://github.com/evan-klein/email/blob/master/signatures.md)
	- Privacy
		- [ ] Protect Mail Activity: unchecked
		- [ ] Hide IP Address: unchecked
		- [ ] Block All Remote Content: unchecked

#### Messages

- [ ] `Messages` › `Preferences...`

#### Calendar

- `Calendar` › `Preferences...`
	- General
		- [ ] Show: 19 hours at a time
		- [ ] Default Calendar: Appointments
	- Advanced
		- [ ] Turn on time zone support: checked
- [ ] `View` › `Show Calendar List`
- [ ] Run:
	```sh
	curl https://raw.githubusercontent.com/evan-klein/dotfiles/master/_macos/ical-days-in-week > ~/ical-days-in-week
	curl https://raw.githubusercontent.com/evan-klein/dotfiles/master/_macos/ical-days-in-week-14 > ~/Desktop/ical-14
	curl https://raw.githubusercontent.com/evan-klein/dotfiles/master/_macos/ical-days-in-week-7 > ~/Desktop/ical-7
	chmod 755 ~/Desktop/ical*
	```

#### Contacts

- `Contacts` › `Preferences...`
	- [ ] Sort By: First Name

#### Image Capture

- [ ] Create directory for scanned files
	```sh
	mkdir ~/Scans/
	```
- Settings
	- [ ] Scan Mode: Flatbed
	- [ ] Kind: Color
	- [ ] Resolution: 300 dpi
	- [ ] Size: US Letter
	- [ ] Scan To: `~/Scans/`
	- [ ] Format: PDF
	- [ ] Combine into single document: checked

#### Screenshot

- [ ] Disable shadow:
	```sh
	defaults write com.apple.screencapture disable-shadow -bool true; killall SystemUIServer
	```

#### TextEdit

- `TextEdit` › `Preferences...`
	- New Document
		- [ ] Plain text: selected
		- [ ] Correct spelling automatically: unchecked
		- [ ] Smart copy/paste: unchecked
		- [ ] Smart quotes: unchecked
		- [ ] Smart dashes: unchecked

#### Terminal

- `Terminal` › `Settings...`
	- Profiles
		- Shell
			- [ ] When the shell exits: Close if the shell exited cleanly

## Third-party applications

#### 1Password

- [ ] Install [1Password](https://1password.com/)

#### Firefox

- [ ] Install [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- [ ] `Firefox` › `Preferences...`
	- General
		- Network Settings
			- [ ] Enable DNS over HTTPS: unchecked
	- Home
		- [ ] Homepage and new windows: Custom URLs...
			- [ ] `file:///Users/evan/Production%20Control%20Dropbox/Evan%20Klein/www/homepage.html|file:///Users/evan/Production%20Control%20Dropbox/Evan%20Klein/www/clipboard/clipboard.html|https://www.poe.com/|https://www.brain.fm/`
		- [ ] New tabs: Blank Page
	- Privacy & Security
		- Logins and Passwords
			- [ ] Ask to save logins and passwords for websites: unchecked
<span id="1password-firefox-extension"></span>
- [ ] Install the [1Password extension](https://support.1password.com/getting-started-browser/)
	- `Tools` › `Add-ons and Themes` › `Extensions` › `1Password`
		- [ ] Run in Private Windows: Allow
- [ ] Install the [Firefox Multi-Account Containers extension](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/)
- [ ] Import [Firefox bookmarks](https://github.com/evan-klein/.firefox-bookmarks)

#### Chrome

- [ ] Install [Chrome](https://www.google.com/chrome/)

#### Microsoft Edge

- [ ] Install [Microsoft Edge](https://www.microsoft.com/en-us/edge/)

#### Opera

- [ ] Install [Opera](https://www.opera.com/)

#### Signal

- [ ] Install [Signal](https://signal.org/)

#### Slack

- [ ] Install Slack from the App Store
	- [ ] Add to Login Items

#### Discord

- [ ] Install [Discord](https://discord.com/)

#### Logi Tune

- [ ] Install [Logi Tune](https://www.logitech.com/en-us/video-collaboration/software/logi-tune-software.html)

#### Spotify

- [ ] Install [Spotify](https://www.spotify.com/us/)
- [ ] `Spotify` › `Preferences`
	- Audio quality
		- [ ] Streaming quality: Very High
		- [ ] Download: Very High
	- Startup and window behaviour
		- [ ] Open Spotify automatically after you log into the computer: No

#### Things 3

- [ ] Install Things 3 from the App Store

#### LibreOffice

- [ ] Install [LibreOffice](https://www.libreoffice.org/)

#### DYMO Label

- [ ] Install [DYMO Label](https://www.dymo.com/en_US/online-support)

#### Adobe Creative Cloud

- [ ] Install [Adobe Creative Cloud](https://www.adobe.com/creativecloud.html)
	- [ ] Install Photoshop
	- [ ] Install Illustrator
	- [ ] Install Acrobat DC
	- [ ] Install Premiere Pro
	- [ ] Install After Effects
	- [ ] Install Bridge
	- [ ] Install Audition
	- [ ] Install Media Encoder

#### OBS

- [ ] Install [OBS](https://obsproject.com/)

#### Real VNC Viewer

- [ ] Install [Real VNC Viewer](https://www.realvnc.com/en/connect/download/viewer/)

#### NewTek NDI Tools

- [ ] Install [NewTek NDI Tools](https://ndi.tv/tools/)

#### Sublime Text

- [ ] Install [Sublime Text](https://www.sublimetext.com/)
- [ ] Run:
	```sh
	curl https://raw.githubusercontent.com/evan-klein/dotfiles/master/sublime-text/Preferences.sublime-settings > ~/Library/"Application Support"/"Sublime Text"/Packages/User/Preferences.sublime-settings
	curl https://raw.githubusercontent.com/evan-klein/dotfiles/master/sublime-text/CSS.sublime-settings > ~/Library/"Application Support"/"Sublime Text"/Packages/User/CSS.sublime-settings
	curl https://raw.githubusercontent.com/evan-klein/dotfiles/master/sublime-text/default-project.sublime-project > ~/default-project.sublime-project
	```
- [ ] Copy and paste license

#### iTerm2

- [ ] Install [iTerm2](https://www.iterm2.com/)
- [ ] `iTerm2` › `Preferences...`
	- General
		- Magic
			- [ ] Instant Replay uses 256 MB per session
		- Selection
			- [ ] Copy to pasteboard on selection: unchecked
	- Appearance
		- Tabs
			- [ ] Show tab bar even when there is only one tab: checked
	- Profiles
		- Colors
			- [ ] Background: #00002a
		- Window
			- [ ] Transparency: above the "E" in "Opaque"

#### Transmit

- [ ] Install [Transmit](https://panic.com/transmit/)
- [ ] `View` › `Show One File Browser`
- [ ] `View` › `Remote Browser`
- [ ] `Transmit` › `Preferences...`
	- Files
		- [ ] Double Click Action: Edit in External Editor
	- Transfers
		- [ ] Play: Morse
- [ ] Copy and paste license

#### Sequel Ace

- [ ] Install [Sequel Ace](https://apps.apple.com/us/app/sequel-ace/id1518036000?mt=12)

#### Sequel Pro

- [ ] Install [Sequel Pro](https://www.sequelpro.com/)
- [ ] `Sequel Pro` › `Preferences...`
	- Tables
		- Reload Table After
			- [ ] Adding a row: checked
			- [ ] Editing a row: checked
			- [ ] Removing a row: checked
	- Auto Update
		- [ ] Automatically check for updates: checked

#### Homebrew

- [ ] Install [Homebrew](https://brew.sh/)
- [ ] Run:
	```sh
	echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/evan/.zprofile
	eval "$(/opt/homebrew/bin/brew shellenv)"
	```

#### Bash

- [ ] Install [Bash](https://formulae.brew.sh/formula/bash)
	```sh
	brew install bash
	```

#### PHP

- [ ] Install [PHP](https://formulae.brew.sh/formula/php)
	```sh
	brew install php
	```

#### Node.js

- [ ] Install [Node.js](https://nodejs.org/en/)
- [ ] Run:
	```sh
	sudo npm install -g http-server
	mkdir ~/www/
	```

#### HTTPBot

- [ ] Install HTTPBot from the App Store

#### Visual JSON

- [ ] Install Visual JSON from the App Store

#### Kaleidoscope

- [ ] Install Kaleidoscope from the App Store
- [ ] Run:
	```sh
	curl https://raw.githubusercontent.com/evan-klein/dotfiles/master/scripts/setup-diff-dir.sh > ~/setup-diff-dir.sh
	sh ~/setup-diff-dir.sh
	rm ~/setup-diff-dir.sh
	```

#### Alinof TimerPro

- [ ] Install Alinof TimerPro from the App Store
- [ ] `File` › `Alarm sounds` › `None`
- [ ] `File` › `Choice of the color theme` › `Black`

#### Parallels Desktop

- [ ] Install [Parallels Desktop](https://www.parallels.com/products/desktop/download/)

#### Dropbox

- [ ] Install [Dropbox](https://www.dropbox.com/)
- [ ] Disable Apple integration
- [ ] `Dropbox` › `Preferences...`
		- Backups
			- External Drive Backups
				- [ ] Show setup notifications when new external drives are plugged-in: unchecked
			- Photos
				- [ ] Enable camera uploads for: unchecked
			- Screenshots
				- [ ] Share screenshots and screen recordings using Dropbox: unchecked
		- Network
			- [ ] Bandwidth › Change Settings... › Upload rate: Don't limit
			- [ ] Enable LAN sync: unchecked
		- Notifications
			- [ ] New files synced: unchecked
		- Sync
			- Storage of new files
				- [ ] New files default: Available offline
			- Select folders to sync to this Mac
				- [ ] Select folders

> If Smart Sync is enabled, you can choose between "Online Only" and "Local" on a folder-by-folder basis in Finder by right-clicking on a folder

## Dock

- [ ] Finder
- [ ] Firefox
- [ ] Safari
- [ ] Chrome
- [ ] Microsoft Edge
- [ ] Opera
- [ ] Mail
- [ ] Messages
- [ ] Signal
- [ ] Slack
- [ ] Discord
- [ ] OpenPhone
- [ ] FaceTime
- [ ] Calendar
- [ ] Contacts
- [ ] Find My
- [ ] Notes
- [ ] Things
- [ ] Reminders
- [ ] Calculator
- [ ] iTerm
- [ ] Sublime Text
- [ ] Kaleidoscope
- [ ] Transmit
- [ ] Sequel Pro
- [ ] Sequel Ace
- [ ] HTTPBot
- [ ] VisualJSON
- [ ] Parallels Desktop
- [ ] Spotify
- [ ] Alinof TimerPro
- [ ] 1Password
- [ ] System Preferences
- [ ] Applications \(as a folder\)
- [ ] Utilities \(as a folder\)
- [ ] Downloads \(as a folder\)

## Sidebar

- [ ] Desktop
- [ ] Applications
- [ ] Utilities
- [ ] evan
- [ ] Downloads
- [ ] Coding
- [ ] git
- [ ] .ssh
- [ ] Diff
- [ ] Before
- [ ] After
- [ ] www
- [ ] AirDrop
- [ ] iCloud Drive
- [ ] Production Control Dropbox
- [ ] Evan Klein
- [ ] Production Control, Inc.
- [ ] Rundown Creator, Inc.
- [ ] Employees
- [ ] Receipts by ID
- [ ] Receipts by Date
- [ ] Receipts Inbox
- [ ] Checks
- [ ] Evan's Inbox
- [ ] Bradley's Inbox
- [ ] Modified v2
- [ ] Templates
- [ ] Exocortext
- [ ] Tmp

## Etc

- [ ] Create a symlink to the `Coding` directory:
	```sh
	ln -s ~/Production\ Control\ Dropbox/Evan\ Klein/Coding/ ~/Coding
	```

## Clean up

- [ ] Clear internet cache in all browsers
- [ ] Delete downloads:
	```sh
	rm -rf ~/Downloads/*
	```
- [ ] Clear bash history:
	```sh
	rm ~/.zsh_history
	```
