# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022
umask 002

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

export EDITOR=vim
export VISUAL=vim
export PAGER=less

# powerline
if [ -f "$HOME/.local/bin/powerline-daemon" ] ; then
    $HOME/.local/bin/powerline-daemon -q
    export POWERLINE_BASH_CONTINUATION=1
    export POWERLINE_BASH_SELECT=1
fi

# Latex
LATEXPATH="$HOME/latex/texlive/2017"
if [ -d "$LATEXPATH" ] ; then
    export PATH="$LATEXPATH/bin/x86_64-linux:$PATH"
    export INFOPATH="$LATEXPATH/texmf-dist/doc/info:$INFOPATH"
    export MANPATH="$LATEXPATH/texmf-dist/doc/man:$MANPATH"
fi

# Qt
QTPATH="$HOME/qt/Qt5.6.0"
if [ -d "$QTPATH" ] ; then
    export PATH="$QTPATH/Tools/QtCreator/bin:$PATH"
    export PATH="$QTPATH/5.6/gcc_64/bin:$PATH"
    export LD_LIBRARY_PATH="$QTPATH/Tools/QtCreator/lib:$LD_LIBRARY_PATH"
    export LD_LIBRARY_PATH="$QTPATH/5.6/gcc_64/lib:$LD_LIBRARY_PATH"
fi

# Cuda
CUDAPATH="/usr/local/cuda"
if [ -d "$CUDAPATH" ] ; then
    export CUDA_HOME=$CUDAPATH
    export PATH="$CUDAPATH/bin:$CUDAPATH/NsightCompute-1.0:$PATH"
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64"
fi

