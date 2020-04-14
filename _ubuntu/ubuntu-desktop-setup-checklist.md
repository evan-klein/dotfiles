# Ubuntu Desktop setup checklist

## Installation

- [ ] Boot from a [Ubuntu Desktop USB drive](https://ubuntu.com/tutorials/install-ubuntu-desktop#3-create-a-bootable-usb-stick)
- [ ] Select "Try Ubuntu"
- [ ] Open Terminal
- [ ] Find the path of the computer's hard drive
	```sh
	sudo fdisk -l
	```
- [ ] Erase the hard drive
	```sh
	sudo dd if=/dev/zero of=/dev/nvme0n1 bs=1M status=progress
	```
- [ ] Reboot
- [ ] Boot from a Ubuntu Desktop USB drive (again)
- [ ] Select "Install Ubuntu"
	- Installation type
		- [ ] Erase disk and install Ubuntu: selected
		- Advanced features...
			- [ ] Use LVM with the new Ubuntu installation: selected
			- [ ] Encrypt the new Ubuntu installation for security: checked

## Setup

1. Open two Terminal windows. In the first Terminal window, run:

	```sh
	mkdir ~/.setup/
	touch ~/.setup/error.log
	tail -F ~/.setup/error.log
	```

1. In the second Terminal window, run:

	```sh
	wget https://raw.githubusercontent.com/prodctrl/echo_/master/echo_.sh -O ~/.setup/echo_.sh
	wget https://raw.githubusercontent.com/evan-klein/dotfiles/master/_ubuntu/ubuntu-desktop-setup.sh -O ~/.setup/ubuntu-desktop-setup.sh
	sh ~/.setup/ubuntu-desktop-setup.sh "**@e***k****.com" 2> ~/.setup/error.log
	```

1. Reboot

1. `Firefox` › `☰` › `Settings`
	- General
		- Network Settings
			- [ ] Enable DNS over HTTPS: unchecked
	- Home
		- [ ] Homepage and new windows: Custom URLs...
			- [ ] `file:///home/evan/Production%20Control%20Dropbox/Evan%20Klein/homepage.html`
		- [ ] New tabs: Blank Page
	- Privacy & Security
		- Logins and Passwords
			- [ ] Ask to save logins and passwords for websites: unchecked

1. Install the [1Password Firefox add-on](https://support.1password.com/getting-started-browser/)
	- `Firefox` › `☰` › `Add-ons and themes` › `1Password`
		- [ ] Run in Private Windows: Allow

1. Install the [Firefox Multi-Account Containers add-on](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/)

1. Set Favorites
	- Files
	- Firefox Web Browser
	- Sublime Text
	- Terminal
	- VirtualBox
	- 1Password
	- Ubuntu Software
	- Screenshot

1. Set Files Bookmarks
	- git
