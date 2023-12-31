#!/bin/sh

xmenu <<EOF | sh &
Applications
	Accessories	
		IMG:$HOME/.config/xmenu/icons/vim.png		Vim		st -e vim
		IMG:$HOME/.config/xmenu/icons/ranger.png	Ranger		st -e ranger
		IMG:$HOME/.config/xmenu/icons/calc.png		Calculator	xcalc
		IMG:$HOME/.config/xmenu/icons/htop.png		HTop		st -e htop
		IMG:$HOME/.config/xmenu/icons/bleachbit.png	BleachBit	bleachbit
	Audio + Video	
		IMG:$HOME/.config/xmenu/icons/audacity.png	Audacity	audacity
		IMG:$HOME/.config/xmenu/icons/obs.png		OBS		obs	
		IMG:$HOME/.config/xmenu/icons/kdenlive.png	Kdenlive	kdenlive
		IMG:$HOME/.config/xmenu/icons/ncmpcpp.png	Ncmpcpp		st -e ncmpcpp
	Emulation
		IMG:$HOME/.config/xmenu/icons/virtualbox.png	Virtualbox 	virtualbox
	Games
		IMG:$HOME/.config/xmenu/icons/doom.png		GZDoom			gzdoom
		IMG:$HOME/.config/xmenu/icons/quake.png		Quake			quakespasm
		IMG:$HOME/.config/xmenu/icons/quake2.png	Quake 2			yamagi-quake2
		IMG:$HOME/.config/xmenu/icons/quake3.png	Quake 3			quake3	
		IMG:$HOME/.config/xmenu/icons/duke3d.png	Duke Nukem 3D		eduke32
		IMG:$HOME/.config/xmenu/icons/stk.png		SuperTuxKart		supertuxkart
		IMG:$HOME/.config/xmenu/icons/openarena.png	OpenArena		openarena
		IMG:$HOME/.config/xmenu/icons/steam.png		Steam	        steam
	Graphics	
		IMG:$HOME/.config/xmenu/icons/gimp.png		GIMP		gimp
		IMG:$HOME/.config/xmenu/icons/scrot.png		Scrot		scrot -s
	Internet	
		IMG:$HOME/.config/xmenu/icons/firefox.png	Firefox		firefox
		IMG:$HOME/.config/xmenu/icons/web.png		Links		st -e links
		IMG:$HOME/.config/xmenu/icons/discord.png	Discord	        discord	
		IMG:$HOME/.config/xmenu/icons/thunderbird.png	Thunderbird	thunderbird	
		IMG:$HOME/.config/xmenu/icons/transmission.png	Transmission	transmission-gtk
	Office
		IMG:$HOME/.config/xmenu/icons/libreoffice.png	LibreOffice Writer	libreoffice --writer
		IMG:$HOME/.config/xmenu/icons/libreoffice.png	LibreOffice Calc	libreoffice --calc
		IMG:$HOME/.config/xmenu/icons/libreoffice.png	LibreOffice Draw	libreoffice --draw
		IMG:$HOME/.config/xmenu/icons/libreoffice.png	LibreOffice Impress	libreoffice --impress
	Settings
		Appearance
			GTK + Icon Settings		lxappearance
			Qt Settings			kvantummanager
			Change Desktop Background	nitrogen
		Volume Mixer		st -e pulsemixer
		NVIDIA GPU Settings	nvidia-settings	
		Compositor Settings	$HOME/suckless/dwm/scripts/picom.sh
Open terminal
	st	st
	kitty		kitty
Kill window		xkill
Run			dmenu_run

dwm
	Manual		st -e vim -R $HOME/suckless/dwm/README.md
	Edit config 	st -e vim $HOME/suckless/dwm/config.h
	Quit 		killall dwm

Lock			slock
Shutdown		loginctl poweroff -i
Reboot			loginctl reboot
EOF
