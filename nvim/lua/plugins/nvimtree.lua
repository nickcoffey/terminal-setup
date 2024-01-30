return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("nvim-tree").setup({})
		local nvim_tree_api = require("nvim-tree.api")
		vim.keymap.set("n", "<leader>tf", nvim_tree_api.tree.toggle, { desc = "toggle file tree" })
	end,
}
