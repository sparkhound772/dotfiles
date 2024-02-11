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

-- Match regardless of case when searching
vim.opt.ignorecase = true

-- Override 'ignorecase' if search contains upper case characters
vim.opt.smartcase = true

-- Show what mode we're in
vim.opt.showmode = true

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


-- LAZY PLUGINS -------------------------------------------------------------------- {{{

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Mapleader: <Space>
-- apparently should be set before Lazy.
--vim.g.mapleader = " "

require("lazy").setup({
  {
    'neovim/nvim-lspconfig',
      dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
      },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { "lua", "vim", "vimdoc", "query", "python", "javascript", "html" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
    end
  },
})

require("mason").setup()
require("mason-lspconfig").setup()
require("lspconfig").pyright.setup {}

-- Load keymappings for LSP
require('plugins.nvim_lspconfig')

-- }}}	


-- NON-LAZY PLUGINS -------------------------------------------------------------------- {{{

-- Loads ~/.config/nvim/lua/plugins/nvim_lspconfig.lua (read for details and keymaps).
-- nvim-lspconfig & pyright needs to be installed,
-- for example with system package manager and npm,
-- or with plugin manager and language server manager such as mason.
--require('plugins.nvim_lspconfig')

-- If on older nvim version uncomment:
--vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"

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
