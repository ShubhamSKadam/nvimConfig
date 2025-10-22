return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    local harpoon = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", harpoon.add_file, { desc = "[A]dd file to harpoon" })
    vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu, { desc = "Show harpoon [E]ditor" })

    -- Keymaps to jump to the files
    vim.keymap.set("n", "<leader>1", function()
      ui.nav_file(1)
    end, { desc = "Harpoon to file 1" })
    vim.keymap.set("n", "<leader>2", function()
      ui.nav_file(2)
    end, { desc = "Harpoon to file 2" })
    vim.keymap.set("n", "<leader>3", function()
      ui.nav_file(3)
    end, { desc = "Harpoon to file 3" })
    vim.keymap.set("n", "<leader>4", function()
      ui.nav_file(4)
    end, { desc = "Harpoon to file 4" })
  end,
}
