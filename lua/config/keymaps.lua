local map = vim.keymap.set

vim.g.mapleader = " "

map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
map("n", "<leader>x", ":x<CR>")

map("n", "<leader>h", ":nohlsearch<CR>")
