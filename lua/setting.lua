
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.scrolloff = 7

vim.opt.wrap = true

vim.opt.laststatus=2

vim.opt.autoread = true

vim.opt.visualbell = true

vim.opt.clipboard = "unnamed"

vim.opt.backup = false
vim.opt.writebackup= false

vim.opt.grepprg="rg --vimgrep --smart-case --follow"
vim.opt.runtimepath = vim.opt.runtimepath + "/opt/homebrew/bin/fzf"

vim.opt.signcolumn = "yes"

-- misc
vim.cmd [[
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'
let g:rustfmt_autosave = 0
let g:fzf_history_dir = '~/.local/share/fzf-history'
]]

