vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true 
vim.opt.splitright = true 

vim.opt.wrap = true

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- Synchronizes the system clipboard 
-- with Neovim's clipboard
vim.opt.clipboard = "unnamedplus"

vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"

vim.opt.ignorecase = true

vim.opt.termguicolors = true

-- leader key
vim.g.mapleader = " "

vim.keymap.set('i', 'jj', '<Esc>', { desc = "Exit Insert Mode with jj" })


