# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# add Raspberry Pi Toolchain
if [ -d "$HOME/rpitools" ] ; then
    PATH="$HOME/rpitools/arm-bcm2708/gcc-linaro-arm-linux/gnueabihf-raspbian:$HOME/rpitools/arm-bcm2708/gcc-linaro-arm-linux/gnueabihf-raspbian/bin:$PATH"
fi

PATH="$HOME/.local/bin/:$PATH"
PATH="/usr/local/bin/:$PATH"

JAVA_HOME=/usr/

alias compinfo="(cat /etc/*release && lscpu)"

# OPAM configuration
. /home/phase/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

eval `opam config env`

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/lib/go/bin:$PATH"

