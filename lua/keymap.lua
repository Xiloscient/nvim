-- Set <Space> as leader
vim.g.mapleader = " "
local opts = { noremap = true, silent = true }

-- Delete without yanking
vim.keymap.set("n", "x", '"_x', opts)
vim.keymap.set("n", "X", '"_X', opts)
vim.keymap.set("n", "<Del>", '"_x', opts)

-- Disable certain keys
vim.keymap.set("n", "<SPACE>", "<Nop>", opts)
vim.keymap.set("n", "<C-z>", "<Nop>", opts)
vim.keymap.set("n", "<C-f>", "<Nop>", opts)

-- Tagbar toggle
vim.keymap.set("n", "<leader>*", ":TagbarToggle<CR>", opts)

-- File navigation
vim.keymap.set("n", "<leader>f", ":NvimTreeFindFileToggle<CR>", opts)
vim.keymap.set("n", "<C-f>", ":Files<CR>", opts)
vim.keymap.set("n", "<C-g>", ":Rg<CR>", opts)
vim.keymap.set("n", "<leader>/", ":Lines<CR>", opts)
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", opts)


-- Vimux toggle pane
vim.keymap.set("n", "<leader>t", ":VimuxTogglePane<CR>", opts)

-- Insert mode arrow controls
vim.keymap.set("i", "<C-h>", "<Left>", opts)
vim.keymap.set("i", "<C-j>", "<Down>", opts)
vim.keymap.set("i", "<C-k>", "<Up>", opts)
vim.keymap.set("i", "<C-l>", "<Right>", opts)
vim.keymap.set("i", "jk", "<Esc>", opts)

