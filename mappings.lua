local map = require("core.utils").map

map("n", "<leader>q", ":q <CR>")

map("n", "<C-A>", "gg0vG$")

map("n", "<leader>ba", "<cmd>bufdo bd<cr>")

map("n", "H", "^")
map("n", "L", "$")

map("v", "H", "^")
map("v", "L", "$")

map("v", "<", "<gv")
map("v", ">", ">gv")

map("n", "<A-j>", ":m .+1<CR>==")
map("n", "<A-k>", ":m .-2<CR>==")
