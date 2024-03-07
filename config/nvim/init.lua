-- Este archivo puede ser cargado llamando a `lua require('plugins')` desde tu init.vim
require('plugins') -- Para cargar el archivo de configuración de plugins

-- Configuraciones de Neovim

-- Activa números relativos para un fácil desplazamiento en el código
vim.opt.relativenumber = true

-- Configura el tema utilizando Pywal
local pywal = require('pywal')
pywal.setup()

-- Activa el modo de ratón, útil para redimensionar divisiones, por ejemplo
vim.opt.mouse = 'a'

-- No muestra el modo en la esquina inferior derecha, ya que se muestra en la línea de estado
vim.opt.showmode = false

-- Sincroniza el portapapeles entre el sistema operativo y Neovim para un fácil copiar y pegar
vim.opt.clipboard = 'unnamedplus'

-- Habilita la indentación de salto (break indent)
vim.opt.breakindent = true

-- Guarda el historial de deshacer incluso después de cerrar Neovim
vim.opt.undofile = true

-- Realiza búsquedas sin distinción entre mayúsculas y minúsculas, a menos que se use \C o haya mayúsculas en la búsqueda
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Mantiene la columna de signos activada por defecto
vim.opt.signcolumn = 'yes'

-- Configuración de Lualine para una línea de estado personalizada
local lualine = require('lualine')
lualine.setup {
  options = {
    theme = 'pywal-nvim',
  },
}
