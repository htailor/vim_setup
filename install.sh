#!/bin/bash

### Definitions ##########################################

BACKUP_DIR=.vim_backup
VIM_DIR=.vim
VIMRC_FILE=.vimrc

### Functions ############################################

function backup_old_vim_setup {

	if [ -d ~/"$BACKUP_DIR" ]
	then
		echo "=> Found VIM backup directory"
	else
		mkdir ~/$BACKUP_DIR
	fi

	cp ~/$VIMRC_FILE ~/$BACKUP_DIR
	cp -r ~/$VIM_DIR ~/$BACKUP_DIR
	echo "=> Backup complete."
}

function install_new_vim_setup {

	cp $VIMRC_FILE ~
	cp -r $VIM_DIR ~

	echo "=> Installation complete."
}

### Main #################################################

echo
echo "Starting VIM setup installation..."

echo
echo "Backing up old VIM settings..."

backup_old_vim_setup

echo
echo "Installing new VIM setup..."

install_new_vim_setup
