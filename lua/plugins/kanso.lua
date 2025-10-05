return  {
    "webhooked/kanso.nvim",
    lazy = false,      -- Must load immediately on startup
    priority = 1000,   -- Ensure it loads before other UI components
    config = function() 
        require("kanso").setup({
            style = "zen"
        })
        vim.cmd.colorscheme("kanso")
    end,
}
