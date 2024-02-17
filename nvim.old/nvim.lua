-- Open fold under cursor: <z-o> or <l> or <h>
-- Close fold under cursor: z-c> or <l> or <h>
-- Open all folds: <zr>
-- Close all folds: <zm>

-- VARIOUS ------------------------------------------------------------------------- {{{

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

-- like 'autoindent' but also recognizes some C syntax to
-- increase/reduce the indent where appropriate."
-- (autoindent is also on by default)
vim.opt.smartindent = true

-- Match regardless of case when searching
vim.opt.ignorecase = true

-- Override 'ignorecase' if search contains upper case characters
vim.opt.smartcase = true

-- Show what mode we're in
vim.opt.showmode = true

splitright = true
vim.opt.splitbelow = true

vim.cmd('autocmd FileType lua setlocal foldmethod=marker')

-- }}}	

-- APPEARENCE ---------------------------------------------------------------------- {{{

-- Favs from the default - choose:
vim.cmd('colorscheme lunaperche')
--vim.cmd('colorscheme industry')
--vim.cmd('colorscheme murphy')

-- }}}	

-- KEYMAPPINGS & MACROS (Plugin specifics are under their respective sections) ----- {{{

vim.api.nvim_set_keymap('n', 'n', 'nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'o', 'o<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'O', 'O<Esc>', { noremap = true, silent = true })
vim.fn.setreg('p', ':w | !pylint %', 'c')
vim.fn.setreg('r', ':w | !python3 %', 'c')

-- }}}	

-- NON-LAZY PLUGINS -------------------------------------------------------------------- {{{

-- LSP for Python.
-- Just see and follow: https://github.com/neovim/nvim-lspconfig
-- nvim-lspconfig & pyright needs to be installed,
-- for example with system package manager and npm,
-- or with plugin manager and language server manager such as mason.

-- }}}	


-- EVALUATE (and convert to Lua) --------------------------------------------------- {{{

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
