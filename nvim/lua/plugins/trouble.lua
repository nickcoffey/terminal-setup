return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		vim.keymap.set("n", "<leader>te", function()
			require("trouble").toggle()
		end, { desc = "[T]oggle Code [E]rrors" })
	end,
}
