return {
	"stevearc/oil.nvim",
	config = function()
		local oil_api = require("oil")
		oil_api.setup({
			view_options = {
				show_hidden = true,
			},
		})

		vim.keymap.set("n", "<leader>o", oil_api.open, { desc = "[O]pen Oil" })
	end,
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
}
