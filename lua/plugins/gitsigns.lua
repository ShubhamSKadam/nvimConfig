-- lua/plugins/gitsigns.lua
return {
	"lewis6991/gitsigns.nvim",
	config = function()
		local gs = require("gitsigns")
		gs.setup()

		vim.keymap.set("n", "<leader>hs", gs.stage_hunk, { desc = "[H]unk [S]tage" })
		vim.keymap.set("n", "<leader>hr", gs.reset_hunk, { desc = "[H]unk [R]eset" })
		vim.keymap.set("v", "<leader>hs", function()
			gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
		end, { desc = "Stage Hunk (Visual)" })
		vim.keymap.set("v", "<leader>hr", function()
			gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
		end, { desc = "Reset Hunk (Visual)" })

		vim.keymap.set("n", "<leader>hS", gs.stage_buffer, { desc = "[H]unk [S]tage Buffer" })
		vim.keymap.set("n", "<leader>hU", gs.undo_stage_hunk, { desc = "[H]unk [U]ndo Stage" })
		vim.keymap.set("n", "<leader>hR", gs.reset_buffer, { desc = "[H]unk [R]eset Buffer" })

		vim.keymap.set("n", "<leader>hp", gs.preview_hunk, { desc = "[H]unk [P]review" })
		vim.keymap.set("n", "<leader>hb", gs.blame_line, { desc = "[H]unk [B]lame" })
	end,
}
