-- Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Cargar archivos de configuración de plugins individuales
local plugin_path = vim.fn.expand("~/.config/nvim/lua/plugins/")
local plugin_files = vim.fn.glob(plugin_path .. "*.lua", false, true)

for _, file in ipairs(plugin_files) do
    local module_name = file:match(".*/(.*).lua"):gsub("/", ".")
    require("plugins." .. module_name)
end

-- Configuración de Lazy.nvim
require("lazy").setup({
    spec = {
        { import = "plugins" }
    }
})
