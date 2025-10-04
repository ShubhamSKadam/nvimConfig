return   {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<Leader>ff', builtin.find_files,{}) -- Find File pnemonic
        vim.keymap.set('n', '<Leader>fg', builtin.live_grep,{}) -- Find File by grep
    end
}

