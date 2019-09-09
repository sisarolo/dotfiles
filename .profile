#umask 022 # rw-r--r--
umask 002 # rw-rw-r--

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

# latex
LATEXPATH="$HOME/latex/texlive/2017"
if [ -d "LATEXPATH" ] ; then
    export PATH="$LATEXPATH/bin/x86_64-linux:$PATH"
    export INFOPATH="$LATEXPATH/texmf-dist/doc/info:$INFOPATH"
    export MANPATH="$LATEXPATH/texmf-dist/doc/man:$MANPATH"
fi
