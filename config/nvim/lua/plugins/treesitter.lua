return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "VeryLazy",
	main = "nvim-treesitter.configs",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	opts = {
		ensure_installed = {
			"lua",
			"luadoc",
			"java",
			"sql",
			"json",
			"css",
			"html",
			"cpp",
			"bash",
		},
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	},
}
