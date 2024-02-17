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

-- "is like 'autoindent' but also recognizes some C syntax to
-- increase/reduce the indent where appropriate."
-- (autoindent is also on by default)
vim.opt.smartindent = true

-- Match regardless of case when searching
vim.opt.ignorecase = true

-- Override 'ignorecase' if search contains upper case characters
vim.opt.smartcase = true

-- Show what mode we're in
vim.opt.showmode = true

vim.opt.splitright = true
vim.opt.splitbelow = true


vim.cmd('autocmd FileType lua setlocal foldmethod=marker')


-- TinyVim below:

--local opt = vim.opt
--
--vim.g.mapleader = " "
--
--opt.laststatus = 3 -- global statusline
--opt.showmode = false
--
--opt.clipboard = "unnamedplus"
--
---- Indenting
--opt.expandtab = true
--opt.shiftwidth = 2
--opt.smartindent = true
--opt.tabstop = 2
--opt.softtabstop = 2
--
--opt.fillchars = { eob = " " }
--opt.ignorecase = true
--opt.smartcase = true
--opt.mouse = "a"
--
---- Numbers
--opt.number = true
--opt.ruler = false
--
--opt.signcolumn = "yes"
--opt.splitbelow = true
--opt.splitright = true
--opt.termguicolors = true
--opt.timeoutlen = 400
--opt.undofile = true
--
--opt.timeoutlen = 400
--opt.updatetime = 250
--
---- add binaries installed by mason.nvim to path
--local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
--vim.env.PATH = vim.env.PATH .. (is_windows and ";" or ":") .. vim.fn.stdpath "data" .. "/mason/bin"
