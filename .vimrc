" Basic config, yet some entries are probably redundant as they 
" may already be in the default .vimrc on the system at hand.
" Remember also to configure the system to parse both files (see /etc/vim/vimrc),
" otherwise this file will override the default.


" VARIOUS

" Disable compatibility with Vi (could cause problems apparently)
set nocompatible

" Self-explanatory
syntax on

" Line numbering on
set number

" Set tabsize to 4 columns
set tabstop=4

" Convert tabs to spaces
set expandtab

" Interpret spaces as tabs so 4 spaces will be deleted with 1 backspace
set softtabstop=4           

" Autoindent 4 spaces
set shiftwidth=4

" Highlight search
set hlsearch

" Incrementally highlight search?
set incsearch

" Match regardless of case when searching
set ignorecase

" Override 'ignorecase' if search contains upper case characters
set smartcase

" Show what mode we're in
set showmode

" Show current line and word number at bottom
set ruler


" APPEARENCE

" Favs from the default - choose:
"colorscheme torte
"colorscheme zaibatsu
"colorscheme pablo
"colorscheme lunaperche
"colorscheme ron
colorscheme murphy

"If on Kali using 'murphy', also enable
hi Comment ctermfg=4
hi String ctermfg=7
hi Statement ctermfg=5
hi Normal ctermfg=6


" WILDMENU

" Options for autocomplete menu in command mode
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" MAPPINGS & MACROS

inoremap jj <Esc>
nnoremap o o<Esc>
nnoremap O O<Esc>
nnoremap n nzz
nnoremap N Nzz
let @p = ':w | !pylint %'
let @r = ':w | !python3 %'


" PROGRAMMING

" Extra language specific highlighting
let python_highlight_all=1

" General autocompletion
set omnifunc=syntaxcomplete#Complete

" Python specific autocompletion (Vim version with Python reqired, check `vim
" --version`)
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

" Unsure what it does and whether necessary
"filetype plugin on


" SOURCE DEFAULTS (for Manjaro)
"runtime! defaults.vim


" OTHER

" Open folded sections: <z-o> 
" Close folded sections: z-c> 
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END 


" EVALUATE ---------------------------------------------------------------------------------------------- {{{

"set foldmethod=indent
"set foldlevel=99
"filetype on
"filetype indent on

" If HTML, indent 2 spaces.
"autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
"
" Highlight whitespace.
" highlight BadWhitespace ctermbg=red guibg=red
" autocmd BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" From: https://realpython.com/vim-and-python-a-match-made-in-heaven/ (all the below)
" To add the proper PEP 8 indentation, add the following to your .vimrc:
" This will give you the standard four spaces when you hit tab, 
" ensure your line length doesn’t go beyond 80 characters, 
" and store the file in a Unix format so you don’t get a bunch of conversion 
" issues when checking into GitHub and/or sharing with other users.
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

" For full stack development, you can use another au command for each filetype:
"au BufNewFile,BufRead *.js, *.html, *.css
"    \ set tabstop=2
"    \ set softtabstop=2
"    \ set shiftwidth=2

" }}}	

" PLUGINS ---------------------------------------------------------------------------------------------- {{{

" }}}	
