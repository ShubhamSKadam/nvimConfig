vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.splitbelow = true 
vim.opt.splitright = true 

vim.opt.wrap = false

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

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<Leader>ff', builtin.find_files,{}) -- Find File pnemonic
vim.keymap.set('n', '<Leader>fg', builtin.live_grep,{}) -- Find File by grep

-- show file view
vim.keymap.set('n','<leader>ft', ':Neotree filesystem reveal left<CR>',{}) -- File tree peneomic 

