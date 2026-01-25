return {
	"catppuccin/nvim",
	auto_integrations = true,
	lazy = false, -- Must load immediately on startup
	priority = 1000, -- Ensure it loads before other UI components
	config = function()
		require("catppuccin").setup({
			transparent_background = true, -- Enables transparency
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
