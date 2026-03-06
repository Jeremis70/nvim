local map = vim.keymap.set

vim.g.mapleader = " "

map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>x", ":x<CR>")

map("n", "<leader>h", ":nohlsearch<CR>")

local opts = { noremap = true, silent = true }
vim.keymap.set("n",    "<Tab>",         ">>",  opts)
vim.keymap.set("n",    "<S-Tab>",       "<<",  opts)
vim.keymap.set("v",    "<Tab>",         ">gv", opts)
vim.keymap.set("v",    "<S-Tab>",       "<gv", opts)
vim.keymap.set("i", "<S-Tab>", "<C-\\><C-N><<<C-\\><C-N>^i")