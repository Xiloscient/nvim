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

-- File navigation
vim.keymap.set("n", "<leader>f", ":NvimTreeFindFileToggle<CR>", opts)
vim.keymap.set("n", "<C-f>", ":FzfLua files<CR>", opts)
vim.keymap.set("n", "<C-g>", ":FzfLua grep_project<CR>", opts)
vim.keymap.set("n", "<leader>/", ":FzfLua lines<CR>", opts)
vim.keymap.set("n", "<leader>o", ":FzfLua loclist<CR>", opts)
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", opts)

-- Insert mode arrow controls
vim.keymap.set("i", "<C-h>", "<Left>", opts)
vim.keymap.set("i", "<C-j>", "<Down>", opts)
vim.keymap.set("i", "<C-k>", "<Up>", opts)
vim.keymap.set("i", "<C-l>", "<Right>", opts)
vim.keymap.set("i", "jk", "<Esc>", opts)

-- LSP stuff
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>D', function() vim.diagnostic.setloclist({open = true}) end, opts)

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.scrolloff = 7

vim.opt.visualbell = true

vim.opt.clipboard = "unnamed"

vim.opt.writebackup = false

vim.opt.grepprg = "rg --vimgrep --smart-case --follow"

vim.opt.signcolumn = "yes"

vim.g.rustfmt_autosave = 0

vim.lsp.enable('lua_ls')
vim.lsp.enable('basedpyright')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('clangd')

vim.diagnostic.config({
  virtual_text = { severity = { min = vim.diagnostic.severity.ERROR } },
  signs        = { severity = { min = vim.diagnostic.severity.ERROR } },
  underline    = { severity = { min = vim.diagnostic.severity.ERROR } },
  severity_sort = true,
  update_in_insert = false,
})

vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

require('lazy').setup({

    ------------------ visual stuff ------------------
    { "ellisonleao/gruvbox.nvim",
      config = function()
        require("gruvbox").setup({ contrast = "hard", transparent_mode = true })
        vim.cmd("colorscheme gruvbox")
      end },
    { "nvim-lualine/lualine.nvim",
      opts = { options = { theme = 'gruvbox', icons_enabled = false } } },


    ------------------ editor -----------------
    "ibhagwan/fzf-lua",

    { 'nvim-tree/nvim-tree.lua',
      opts = { renderer = { icons = {
        show = { file = false, folder = false, folder_arrow = false, git = false }
      }}} },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

    ------------------ completion and linting -----------------
    'neovim/nvim-lspconfig',
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
      main = 'nvim-treesitter.configs',
      opts = { highlight = { enable = true }, indent = { enable = true } } },

    {
      'saghen/blink.cmp',
      dependencies = { 'rafamadriz/friendly-snippets' },
      version = '1.*',
      opts = { completion = { documentation = { auto_show = true } } },
    },

    'rust-lang/rust.vim',

    ------------------ qol ------------------
    'tpope/vim-surround',   -- better surrounding chars
    'tpope/vim-commentary', -- comment/uncomment
    'ntpeters/vim-better-whitespace', -- whitespace cleanup
    { 'windwp/nvim-autopairs', opts = {} },

    ------------------ git ------------------
    "kdheepak/lazygit.nvim",
    { 'lewis6991/gitsigns.nvim',
        opts = {
            signs = {
                add = { text = '+' },
                change = { text = '~' },
                delete = { text = '_' },
                topdelete = { text = '‾' },
                changedelete = { text = '~' },
            }
        }
    },

    'tpope/vim-fugitive'
})
