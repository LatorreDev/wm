return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		local neotree_toggle = false
		vim.keymap.set("n", "<C-n>", function()
			if neotree_toggle then
				vim.cmd(":Neotree close")
				neotree_toggle = false
			else
				vim.cmd(":Neotree filesystem reveal left")
				neotree_toggle = true
			end
		end, { silent = true })
	end,
}
