local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable version
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,      -- Must load immediately on startup
        priority = 1000,   -- Ensure it loads before other UI components
        config = function() vim.cmd.colorscheme("kanagawa-dragon")
        end,
    },
   {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "nvim-treesitter/nvim-treesitter", build = ":TSUpdate"
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", 
        },
    },
}

local opts = {}
require("lazy").setup(plugins,opts)

local config = require("nvim-treesitter.configs") 
config.setup({
    ensure_installed = {"lua", "javascript","python"},
    highlight = {enable = true},
    indent = {enable = true}
})





