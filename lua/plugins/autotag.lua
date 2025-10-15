-- In a file like lua/plugins/autotag.lua
return {
  'windwp/nvim-ts-autotag',
  config = function()
    require('nvim-ts-autotag').setup({
        -- You can leave this empty to use the defaults
        -- Or check the plugin's documentation for options
    })
  end,
}
