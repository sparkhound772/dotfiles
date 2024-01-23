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
"set omnifunc=syntaxcomplete#Complete
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
let @p = ':w | !pylint %'
let @r = ':w | !python3 %'

" TRIAL
"set foldmethod=indent
"set foldlevel=99
"filetype on
"filetype indent on
