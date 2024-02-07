" Basic config, yet some entries are probably redundant as they 
" may already be in the default .vimrc on the system at hand.
" Remember also to configure the system to parse both files (see /etc/vim/vimrc),
" otherwise this file will override the default.

" VARIOUS
set nocompatible
syntax on
set number
set shiftwidth=4
set tabstop=4
set incsearch
set hlsearch
set ignorecase
set smartcase
set showmode
set ruler

" APPEARENCE
"colorscheme torte
"colorscheme zaibatsu
"colorscheme pablo
"colorscheme lunaperche
"colorscheme ron
colorscheme murphy
"On kali:
hi Comment ctermfg=4
hi String ctermfg=7
hi Statement ctermfg=5
hi Normal ctermfg=6

" WILDMENU
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" MAPPINGS
inoremap jj <Esc>
nnoremap o o<Esc>
nnoremap O O<Esc>
"nnoremap n nzz
"nnoremap N Nzz
noremap <c-up> <c-w>+    
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" PROGRAMMING
"filetype plugin on
let python_highlight_all=1
set omnifunc=syntaxcomplete#Complete
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
let @p = ':w | !pylint %'
let @r = ':w | !python3 %'

" TRIAL
"set foldmethod=indent
"set foldlevel=99
"filetype on
"filetype indent on

" SOURCE DEFAULTS (Manjaro)
runtime! defaults.vim

" VIMSCRIPT ---------------------------------------------------------------------------------------------- {{{

"" Set foldmethod=marker.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END 

" If HTML, indent 2 spaces.
"autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab
"
" Highlight whitespace."
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
