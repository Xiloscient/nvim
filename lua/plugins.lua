require('lazy').setup({

    "nvim-lua/plenary.nvim",

    ------------------ visual stuff ------------------
    "ellisonleao/gruvbox.nvim",
    'nvim-lualine/lualine.nvim',
    'hiphish/rainbow-delimiters.nvim',
    'brenoprata10/nvim-highlight-colors',

    ------------------ editor -----------------
    'junegunn/fzf', --fuzzy search
    'junegunn/fzf.vim',

    'preservim/vimux', --tmux support
    'nvim-tree/nvim-tree.lua', --file tree
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },


    ------------------ completion and linting -----------------

    'neovim/nvim-lspconfig',
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},

    {
        'hrsh7th/nvim-cmp', event = "InsertEnter",
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/cmp-vsnip',
            'hrsh7th/vim-vsnip', --snippet support,
            'hrsh7th/vim-vsnip-integ', --snippet support
            'zbirenbaum/copilot.lua',
            'zbirenbaum/copilot-cmp',
        }
    },

    'rust-lang/rust.vim',
    {'kaarmu/typst.vim', ft = 'typst', lazy=false},

    ------------------ qol ------------------
    'tpope/vim-surround',   -- better surrounding chars
    'tpope/vim-commentary', -- comment/uncomment
    "Xiloscient/snippets",
    --'folke/flash.nvim',

    'ntpeters/vim-better-whitespace', -- whitespace cleanup
    'windwp/nvim-autopairs', --bracket pair generation

    'preservim/tagbar',

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
