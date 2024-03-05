-- Configuraciones de Neovim
vim.opt.relativenumber = true

-- Theme pywal
local pywal = require('pywal')

pywal.setup()

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- lualine
local lualine = require('lualine')

-- Lualine
lualine.setup {
  options = {
    theme = 'pywal-nvim',
  },
}

-- Inicializar Packer
return require('packer').startup(function()
    -- Packer puede gestionarse a sí mismo
    use 'wbthomason/packer.nvim'

    -- Lista de plugins que quieres instalar
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'kyazdani42/nvim-tree.lua'
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'neoclide/coc.nvim'
    use 'akinsho/nvim-bufferline.lua'
    use 'RRethy/vim-illuminate'
    use 'sindrets/diffview.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'airblade/vim-gitgutter'
    use 'hoob3rt/lualine.nvim'
    use 'famiu/feline.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }
end)
