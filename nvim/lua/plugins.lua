-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use 'morhetz/gruvbox'


    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    ------------------ visual stuff ------------------
    use 'Mofiqul/dracula.nvim'
    use 'luochen1990/rainbow'
    use {'nvim-lualine/lualine.nvim'}

    ------------------ fzf -----------------
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'

    ------------------ completion and linting -----------------
    use 'neovim/nvim-lspconfig'

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

    -- language specific stuff
    use 'rust-lang/rust.vim'


    ------------------ qol ------------------
    use 'tpope/vim-surround'   -- better surrounding chars
    use 'tpope/vim-commentary' -- comment/uncomment
    use 'tpope/vim-dispatch'--async compiling

    use 'ntpeters/vim-better-whitespace' -- whitespace cleanup
    use 'windwp/nvim-autopairs' --bracket pair generation
    use 'preservim/tagbar'

    use 'easymotion/vim-easymotion' -- better motions
    use 'tpope/vim-fugitive' --git support

    use 'preservim/vimux' --tmux support

    use 'sbdchd/neoformat'

    use "Xiloscient/snippets"

    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons.lua'
    use {'kaarmu/typst.vim', ft = {'typst'}}
 end)
