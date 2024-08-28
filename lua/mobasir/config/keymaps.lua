vim.g.mapleader = " "

local keymaps = vim.keymap

keymaps.set("n", "<leader>l", "<cmd>:Lazy<CR>")
keymaps.set("n", "<leader>*", "<cmd>:wqa<CR>")

keymaps.set({ "n", "v" }, "<leader>y", [["+y]])
keymaps.set("n", "<leader>Y", [["+Y]])

keymaps.set("n", "<C-s>", "<cmd>:w<CR>")

keymaps.set("v", "<C-k>", ":m '>+1<CR>gv=gv")
keymaps.set("v", "<C-j>", ":m '>-2<CR>gv=gv")

keymaps.set("n", "J", "mzJ`z")
keymaps.set("n", "<C-d>", "<C-d>zz")
keymaps.set("n", "<C-u>", "<C-u>zz")

keymaps.set("x", "<leader>p", '"_d')

keymaps.set("n", "<C-e>", ":Ex<CR>", { noremap = true, silent = true })
keymaps.set("n", "<leader>e", ":Lexplore<CR>", { noremap = true, silent = true })

keymaps.set("n", "<leader>f", "%", { noremap = true, silent = true })
