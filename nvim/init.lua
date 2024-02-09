-- VARIOUS

-- Line numbering on
vim.opt.number = true

-- Interpret spaces as tabs so 4 spaces will be deleted with 1 backspace
vim.opt.softtabstop = 4

-- Autoindent 4 spaces
vim.opt.shiftwidth = 4

-- Set tabsize to 4 columns
vim.opt.tabstop = 4

-- Convert tabs to spaces
vim.opt.expandtab = true

-- Match regardless of case when searching
vim.opt.ignorecase = true

-- Override 'ignorecase' if search contains upper case characters
vim.opt.smartcase = true

-- Show what mode we're in
vim.opt.showmode = true


-- APPEARENCE

-- Favs from the default - choose:
--vim.cmd('colorscheme torte')
--vim.cmd('colorscheme zaibatsu')
--vim.cmd('colorscheme pablo')
--vim.cmd('colorscheme lunaperche')
--vim.cmd('colorscheme ron')
vim.cmd('colorscheme murphy')


-- MAPPINGS & MACROS

vim.api.nvim_set_keymap('n', 'n', 'nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'o', 'o<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'O', 'O<Esc>', { noremap = true, silent = true })
vim.fn.setreg('p', ':w | !pylint %', 'c')
vim.fn.setreg('r', ':w | !python3 %', 'c')


-- OTHER

-- Open folded sections: <z-o> 
-- Close folded sections: z-c> 
vim.cmd('augroup filetype_vim')
vim.cmd('autocmd!')
vim.cmd('autocmd FileType vim setlocal foldmethod=marker')
vim.cmd('augroup END')


-- EVALUATE (and convert to Lua) ---------------------------------------------------------------------------------------------- {{{

-- Extra language specific highlighting
--let python_highlight_all=1

-- General autocompletion
--set omnifunc=syntaxcomplete#Complete

-- Python specific autocompletion (Vim version with Python reqired, check `vim
-- --version`)
--autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

-- Highlight whitespace.
-- highlight BadWhitespace ctermbg=red guibg=red
-- autocmd BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

--au BufNewFile,BufRead *.py
--    \ set textwidth=79
--    \ set fileformat=unix

--au BufNewFile,BufRead *.js, *.html, *.css
--    \ set tabstop=2
--    \ set softtabstop=2
--    \ set shiftwidth=2

-- }}}	

-- PLUGINS ---------------------------------------------------------------------------------------------- {{{

-- }}}	
