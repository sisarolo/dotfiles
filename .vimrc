set number " activates line numbers
set showtabline=2 " always shows tab line
set ruler " shows current row and column in status line
set showcmd " shows information about executed command in status line
set wildmenu " shows list of matching candidates at command-line completion
"set laststatus=2 " always displays an extra line above status line

set background=dark " adapts color scheme for dark background
set showmatch " shows matching brackets
set list " enables displaying non-printable characters
set listchars=tab:»\ ,trail:-,nbsp:+,extends:›,precedes:‹
"set listchars=tab:▸\ ,trail:·,nbsp:·,extends:→,precedes:←
"set listchars=tab:>\ ,trail:-,nbsp:+,extends:>,precedes:<

set hlsearch " highlights search results
"set incsearch " jumps to search results already during writing
"set ignorecase " case insensitive search
"set smartcase " be case sensitive if word contains an upper case letter

set expandtab " spaces are inserted instead of a <Tab> symbol, when <Tab> key is hit (:retab, Ctrl+V <Tab>)
set softtabstop=4 " number of columns hitting the <Tab> key counts for
set tabstop=4 " number of columns a <Tab> symbol counts for
set smartindent " same indentation like line before + considers curly brackets level (makes autoindent and cindent obsolete)
set shiftwidth=4 " number of indentation columns (>>, <<)
"set smarttab " ???

set nofoldenable " disables text folding
set noswapfile
set nobackup
set nowritebackup

set backspace=2 " allows backspace to delete over line ends
"set whichwrap+=<,>,h,l,[,] " allows cursor to move over line ends
"set paste " do not format incoming text (resets a lot of other options)

" determine informations about current options
"set " shows options with non-default value
"set all " shows all options
"setglobal " shows global option values
"setlocal " shows local option values

" enables syntax highlighting
if has("syntax")
    syntax on
endif

" jumps to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" sets number of characters at which an automatic line break is inserted (only for text files)
"if has("autocmd")
"    autocmd FileType text setlocal textwidth=80
"endif

" loads indentation rules and plugins according to the detected filetype
"if has("autocmd")
"    filetype plugin indent on
"endif

" enables the mouse in the terminal
"if has('mouse')
"    set mouse=a
"endif

