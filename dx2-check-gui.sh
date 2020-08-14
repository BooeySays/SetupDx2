#!/bin/bash

CHECKY="\033[00;01m❲\033[00;01;38;5;46m✔\033[00;01m❳\033[m"
CHECKN="\033[00;01m❲\033[00;01;38;5;196m✗\033[00;01m❳\033[m"
CHECKW="\033[00;01m❲\033[00;01;38;5;190m⧖❳\033[m"

#THINGS TO CHECK FOR
function __runcheck()
{
SETUPREQ=0
clear;
echo -en """
\033[1;4mCheck if vars are loaded:\033[m
""";
tput sc;
echo -en """"$CHECKW" \$DX2
"$CHECKW" \$DX2BIN
"$CHECKW" \$DX2DATA
"$CHECKW" \$DX2RC
"$CHECKW" \$DX2BAK
"$CHECKW" \$DX2TMP
"$CHECKW" \$DX2GIT
"$CHECKW" \$DX2FUNCS
"$CHECKW" \$DX2ALIASES
"$CHECKW" \$DX2SHORTCUTS

\033[1;4mCheck if DIR exists:\033[m
"$CHECKW" \$DX2
"$CHECKW" \$DX2BIN
"$CHECKW" \$DX2DATA
"$CHECKW" \$DX2RC
"$CHECKW" \$DX2BAK
"$CHECKW" \$DX2TMP
"$CHECKW" \$DX2GIT
"$CHECKW" \$DX2FUNCS
"$CHECKW" \$DX2ALIASES
"$CHECKW" \$DX2SHORTCUTS

\033[1;4mCheck if file(s) exists:\033[m
"$CHECKW" \$HOME/.dx2rc

\033[1;4mCheck if rc file(s) are edited:\033[m
"$CHECKW" Edited ~/.bashrc
"$CHECKW" Edited ~/.zshrc

""";
tput rc;
sleep .4;
if [ $DX2 ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ $DX2BIN ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ $DX2DATA ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ $DX2RC ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ $DX2BAK ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ $DX2TMP ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ $DX2GIT ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ $DX2FUNCS ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ $DX2ALIASES ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ $DX2SHORTCUTS ]; then
	echo -en "$CHECKY"
	tput cud 3
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 3
	printf '\r'
fi
sleep .4;
if [ -d $HOME/.DX2 ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ -d $DX2/bin ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ -d $DX2/data ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ -d $DX2/rc ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ -d $DX2/backups ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ -d $DX2/temp ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ -d $DX2/git ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ -d $DX2/functions ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ -d $DX2/aliases ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 1
	printf '\r'
fi
sleep .4;
if [ -d $DX2/.Shortcuts ]; then
	echo -en "$CHECKY"
	tput cud 3
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 3
	printf '\r'
fi
sleep .4;
if [ -f $HOME/.dx2rc ]; then
	echo -en "$CHECKY"
	tput cud 3
	printf '\r'
else
	echo -en "$CHECKN"
	SETUPREQ=1
	tput cud 3
	printf '\r'
fi
sleep .4;
if [ ! -f $HOME/.bashrc ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	if [ "$(cat ~/.bashrc | grep -qe 'source ~/.dx2rc'; echo $?)" -eq 0 ]; then
		echo -en "$CHECKY"
		tput cud 1
		printf '\r'
	else
		echo -en "$CHECKN"
		SETUPREQ=1
		tput cud 1
		printf '\r'
	fi
fi
sleep .4;
if [ ! -f $HOME/.zshrc ]; then
	echo -en "$CHECKY"
	tput cud 1
	printf '\r'
else
	if [ "$(cat ~/.zshrc | grep -qe 'source ~/.dx2rc'; echo $?)" -eq 0 ]; then
		echo -en "$CHECKY"
		tput cud 1
		printf '\r'
	else
		echo -en "$CHECKN"
		SETUPREQ=1
		tput cud 1
		printf '\r'
	fi
fi

if [ "$SETUPREQ" -eq 1 ]; then
	echo -en """
One or more elements is missing.

You will need to run the dx2setup script.

[ HIT ANY KEY TO CONTINUE ]

"""
	read
else
	echo -en """
All of the dx2 elements were found.

No futher setup is required.

[ HIT ANY KEY TO CONTINUE ]

"""
	read
fi
}
__runcheck