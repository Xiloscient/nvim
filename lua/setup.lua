local bindings =  require("keymap")

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- tabs and indents
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

vim.cmd[[
highlight Cursor guifg=white guibg=steelblue
:set nocursorcolumn
:set nocursorline
:set guicursor=n-v-c:block-Cursor
:set guicursor+=i:ver100-iCursor
:set guicursor+=n-v-c:blinkon0
:set guicursor+=i:blinkwait10
]]

-- misc
vim.cmd [[
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'
let g:rustfmt_autosave = 0
let g:python3_host_prog="/usr/local/bin/python3"
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:typst_pdf_viewer='sioyek'
]]

bindings.nnoremap("x", '"_x')
bindings.nnoremap("X", '"_X')
bindings.nnoremap("<Del>", '"_x')

bindings.nmap("<SPACE>", "<Nop>")
bindings.nnoremap("<c-z>", "<nop>")
vim.g.mapleader = " "

bindings.nmap( "<leader>*", ":TagbarToggle<CR>")

-- C-p: FZF find files
bindings.nmap("<C-f>", "<Nop>")
bindings.nnoremap("<C-f>", ":Files<CR>")

bindings.nnoremap("<leader>f", ":NvimTreeFindFileToggle<CR>")

-- C-g: FZF ('g'rep)/find in files
bindings.nnoremap("<C-g>", ":Rg<CR>")

bindings.nnoremap("<leader>t", ":VimuxTogglePane<CR>")

-- insert mode
bindings.imap("<C-h>", "<Left>")
bindings.imap("<C-j>", "<Down>")
bindings.imap("<C-k>", "<Up>")
bindings.imap("<C-l>", "<Right>")

--refactoring
bindings.nnoremap("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>" )
