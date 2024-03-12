return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use "nvim-lua/plenary.nvim"

    ------------------ visual stuff ------------------
    use "ellisonleao/gruvbox.nvim"
    use 'Mofiqul/dracula.nvim'
    use 'frazrepo/vim-rainbow'
    use 'nvim-lualine/lualine.nvim'

    ------------------ editor -----------------
    use 'junegunn/fzf' --fuzzy search
    use 'junegunn/fzf.vim'

    use 'preservim/vimux' --tmux support
    use 'nvim-tree/nvim-tree.lua' --file tree
    use 'lukas-reineke/indent-blankline.nvim'


    ------------------ completion and linting -----------------

    use 'neovim/nvim-lspconfig'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    use {
        'hrsh7th/nvim-cmp',
        requires = {
            use 'hrsh7th/cmp-nvim-lsp',
            use 'hrsh7th/cmp-buffer',
            use 'hrsh7th/cmp-path',
            use 'hrsh7th/cmp-cmdline',
            use 'hrsh7th/cmp-vsnip',
            use 'hrsh7th/vim-vsnip', --snippet support,
            use 'hrsh7th/vim-vsnip-integ', --snippet support
        }
    }

    use 'rust-lang/rust.vim'
    use {'kaarmu/typst.vim', ft = {'typst'}}


    ------------------ qol ------------------
    use 'tpope/vim-surround'   -- better surrounding chars
    use 'tpope/vim-commentary' -- comment/uncomment
    use "Xiloscient/snippets"
    use 'folke/flash.nvim'

    use 'ntpeters/vim-better-whitespace' -- whitespace cleanup
    use 'windwp/nvim-autopairs' --bracket pair generation

    use 'preservim/tagbar'



    ------------------ git ------------------
    use "kdheepak/lazygit.nvim"
    use "lewis6991/gitsigns.nvim"
    use 'tpope/vim-fugitive'

    use 'ThePrimeagen/vim-be-good'

 end)
