#!/usr/bin/make -s
# DESCRIPTION
#	Some helpers to setup working environment during labx workshop
#
# USAGE
#	read the doc
#
# AUTHOR
#	Édouard Lopez <dev+labx@edouard-lopez.com>

ifneq (,)
This makefile requires GNU Make.
endif

# force use of Bash
SHELL := /bin/bash

# we try to sniff some config
OS:=$(shell lsb_release -si)
ifeq (${OS},Debian)
	PKG_INSTALL:=apt-get install
endif
ifeq (${OS},LinuxMint)
	PKG_INSTALL:=apt-get install
endif
ifeq (${OS},Ubuntu)
	PKG_INSTALL:=apt-get install
endif
ifeq (${OS},Arch)
	PKG_INSTALL:=pacman -S
endif


# Tasks
PHONY: show-info create-cli-user revoke-access install-requirements add-ssh-config
default: install-requirements add-ssh-config create-cli-user

# Summarize detected informations
show-info:
	@printf "OS: %s\n" "${OS}"

# Create a user to host Tmux session
create-cli-user: install-requirements
	sudo useradd --gid users --password "$(mkpasswd cli)" --create-home --comment "User for L@bX workshop" cli

# If you want to revoke access to your machine, remove the user
revoke-access:
	sudo userdel cli

# Install SSH, tmux, and others utility
install-requirements: show-info
	sudo ${PKG_INSTALL} tmux openssh-{server,client}

# Add a section in ~/.ssh/config to allow ssh connection with only:
# 	ssh cli@labx
# @required: {string} HOSTNAME
# @required: {integer} PORT
# Default value for required parameters:
HOSTNAME:=labx
PORT:=22
add-ssh-config:
	grep 'cli@labx' "$$HOME"/.ssh/config \
	&& cat ssh.config | sed \
			-e 's/_HOSTNAME_/${HOSTNAME}/' \
			-e 's/_PORT_/${PORT}/' \
		>> "$$HOME"/.ssh/config
