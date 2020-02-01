# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
umask 022

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

# Homebrew
if [ -d "$HOME/.linuxbrew/bin" ]; then
    PATH="$HOME/.linuxbrew/bin:$PATH"
fi

# bat
if [ -f "$(which bat)" ]; then
    export BAT_STYLE='plain'
    export BAT_THEME='TwoDark'
fi

# fzf
if [ -f "$(which fzf)" ]; then
    if [ -f "$(which bat)" ]; then
        export FZF_DEFAULT_OPTS='--height=40% --layout=reverse --info=inline --no-mouse --multi --preview "[ -f {} ] && bat --color=always {} || echo \"no preview\""'
    else
        export FZF_DEFAULT_OPTS='--height=40% --layout=reverse --info=inline --no-mouse --multi --preview "[ -f {} ] && cat {} || echo \"no preview\""'
    fi
fi

# enhancd
if [ -f "$HOME/enhancd/init.sh" ]; then
    ENHANCD_COMMAND=cde
    ENHANCD_DISABLE_DOT=1
    ENHANCD_DISABLE_HYPHEN=1
    if [ -f "$(which fzf)" ]; then
        ENHANCD_FILTER=fzf
    fi
    . "$HOME/enhancd/init.sh"
fi

# Proxy server
#export http_proxy="http://proxy-ip:port"
#export https_proxy="http://proxy-ip:port"
#export ftp_proxy="http://proxy-ip:port"
#export HTTP_PROXY=$http_proxy
#export HTTPS_PROXY=$https_proxy
#export FTP_PROXY=$ftp_proxy

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

