-- For some reason those don't work in chadrc Mappings
vim.keymap.set("n", "s", "<cmd>lua require('substitute').operator()<cr>", { noremap = true })
vim.keymap.set("n", "ss", "<cmd>lua require('substitute').line()<cr>", { noremap = true })
vim.keymap.set("n", "S", "<cmd>lua require('substitute').eol()<cr>", { noremap = true })
vim.keymap.set("x", "s", "<cmd>lua require('substitute').visual()<cr>", { noremap = true })

vim.keymap.set("n", "x", '"_dl', { noremap = true })
vim.keymap.set("x", "x", '"_dl', { noremap = true })

vim.keymap.set("n", "B", "<Nop>")

vim.o.guifont = "Hack Nerd Font"
vim.opt.noswapfile = true
