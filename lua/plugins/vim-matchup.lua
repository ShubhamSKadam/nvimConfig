return {
	"andymass/vim-matchup",
	event = "CursorMoved", -- Load it when you move your cursor
	config = function()
		-- Optional: Enable treesitter integration for even better accuracy
		vim.g.matchup_treesitter_enabled = 1
	end,
}
