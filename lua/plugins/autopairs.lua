-- In a file like lua/plugins/autopairs.lua
return {
	"windwp/nvim-autopairs",
	event = "InsertEnter", -- Load this plugin only when entering insert mode
	config = function()
		require("nvim-autopairs").setup({})
	end,
}
