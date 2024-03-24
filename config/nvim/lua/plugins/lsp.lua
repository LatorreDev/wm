return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"folke/neodev.nvim",
		"sumneko/lua-language-server",
	},
	config = function()
		require("neodev").setup()
--		require("lspconfig").lua_ls.setup({
--			on_attach = on_attach,
--			settings = {
--				Lua = {
--					telemetry = { enable = false },
--					workspace = { checkThirdParty = false },
--				}
--			}
--		})
	end
}

