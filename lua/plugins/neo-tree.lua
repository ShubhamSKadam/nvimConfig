return{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons", 
    },
    config = function()
        -- show file view
        vim.keymap.set('n','<leader>ft', ':Neotree filesystem reveal left<CR>',{})
    end

}
