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

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PAGER=less
export EDITOR=vim
export VISUAL=vim

# powerline
if [ -f "$(which powerline-daemon)" ] ; then
    powerline-daemon -q
    export POWERLINE_BASH_CONTINUATION=1
    export POWERLINE_BASH_SELECT=1
fi

# latex
LATEXPATH="$HOME/latex/texlive/2017"
if [ -d "$LATEXPATH" ] ; then
    export PATH="$LATEXPATH/bin/x86_64-linux:$PATH"
    export INFOPATH="$LATEXPATH/texmf-dist/doc/info:$INFOPATH"
    export MANPATH="$LATEXPATH/texmf-dist/doc/man:$MANPATH"
fi

# qt
QTPATH="$HOME/qt/Qt5.6.0"
if [ -d "$QTPATH" ] ; then
    export PATH="$QTPATH/Tools/QtCreator/bin:$PATH"
    export PATH="$QTPATH/5.6/gcc_64/bin:$PATH"
    export LD_LIBRARY_PATH="$QTPATH/Tools/QtCreator/lib:$LD_LIBRARY_PATH"
    export LD_LIBRARY_PATH="$QTPATH/5.6/gcc_64/lib:$LD_LIBRARY_PATH"
fi

# unreal engine
UE4_ROOT="$HOME/playspace/UnrealEngine_4.21"
if [ -d "$UE4_ROOT" ] ; then
    export UE4_ROOT
fi

