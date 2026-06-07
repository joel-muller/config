local map = vim.keymap.set

map({ "n", "v" }, "<C-d>", "<C-d>zz")
map({ "n", "v" }, "<C-u>", "<C-u>zz")
map({ "n", "v" }, "H", "^")
map({ "n", "v" }, "L", "$")
map("i", "<C-c>", "<Esc>")
