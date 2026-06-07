return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>sf", builtin.git_files,  { desc = "Find files" })
    vim.keymap.set("n", "<leader>sg", builtin.live_grep,   { desc = "Live grep" })
    vim.keymap.set("n", "<leader>sb", builtin.buffers,     { desc = "Buffers" })
  end,
}
