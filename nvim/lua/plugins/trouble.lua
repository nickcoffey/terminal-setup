return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("trouble").setup({})
		vim.keymap.set("n", "<leader>te", "<cmd>Trouble diagnostics toggle<CR>", { desc = "[T]oggle Code [E]rrors" })
	end,
}
