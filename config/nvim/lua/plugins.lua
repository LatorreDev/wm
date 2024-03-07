-- Este archivo puede ser cargado llamando a `lua require('plugins')` desde tu init.vim

-- Solo necesario si tienes packer configurado como 'opt'
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer puede administrarse a sí mismo
  use 'wbthomason/packer.nvim'

  -- Plugins simples pueden ser especificados como cadenas
  use 'rstacruz/vim-closer'

  -- Carga perezosa:
  -- Cargar en comandos específicos
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Cargar en un evento autocomando
  use {'andymass/vim-matchup', event = 'VimEnter'}

  -- Cargar en una combinación de condiciones: tipos de archivos o comandos específicos
  -- También ejecuta código después de cargar (ver la clave "config")
  use {
    'w0rp/ale',
    ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    cmd = 'ALEEnable',
    config = 'vim.cmd[[ALEEnable]]'
  }

  -- Los plugins pueden tener dependencias de otros plugins
  use {
    'haorenW1025/completion-nvim',
    opt = true,
    requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  }

  -- Puedes especificar rocks de forma aislada
  use_rocks 'penlight'
  use_rocks {'lua-resty-http', 'lpeg'}

  -- Los plugins pueden tener ganchos de post-instalación/actualización
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- Gancho de post-instalación/actualización con comando neovim
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Gancho de post-instalación/actualización con llamada de función vimscript con argumento
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- Usar rama específica, dependencia y ejecutar archivo lua después de cargar
  use {
    'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Usar dependencia y ejecutar función lua después de cargar
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- Puedes especificar múltiples plugins en una sola llamada
  use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

  -- Ahora se incluyen los plugins adicionales

  -- Telescope.nvim para una experiencia de búsqueda más avanzada
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- nvim-tree.lua para un explorador de archivos
  use 'kyazdani42/nvim-tree.lua'

  -- Configuración y resaltado de sintaxis avanzado con treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Configuración de LSP para Neovim
  use 'neovim/nvim-lspconfig'

  -- LSP Saga para mejoras en la experiencia de LSP
  use 'glepnir/lspsaga.nvim'

  -- Coc.nvim para autocompletado avanzado
  use 'neoclide/coc.nvim'

  -- Bufferline.lua para una línea de buffers más avanzada
  use 'akinsho/nvim-bufferline.lua'

  -- Vim Illuminate para resaltar palabras bajo el cursor
  use 'RRethy/vim-illuminate'

  -- Diffview.nvim para ver diferencias de archivos de forma interactiva
  use 'sindrets/diffview.nvim'

  -- Gitsigns.nvim para marcas de cambios de git en el código
  use 'lewis6991/gitsigns.nvim'

  -- Vim GitGutter para marcar cambios de git en el margen
  use 'airblade/vim-gitgutter'

  -- Lualine.nvim para líneas de estado en Lua
  use 'hoob3rt/lualine.nvim'

  -- Feline.nvim para un reemplazo ligero y moderno de la línea de estado
  use 'famiu/feline.nvim'

  -- Indent Blankline para mostrar líneas en blanco de forma más clara
  use 'lukas-reineke/indent-blankline.nvim'

  -- Pywal.nvim para integración con Pywal
  use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }
end)

