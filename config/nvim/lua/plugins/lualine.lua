return {
	"nvim-lualine/lualine.nvim",
	lazy = false, -- make sure we load this during startup if it is your main lualine
	priority = 1000, -- make sure to load this before all the other start plugins
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	opts = {
		options = {
			globalstatus = true,
			theme = 'pywal',
		},
	},
}
