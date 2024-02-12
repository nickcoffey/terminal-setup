return {
	"hedyhli/outline.nvim",
	config = function()
		require("outline").setup({})
		vim.keymap.set("n", "<leader>to", "<cmd>Outline<CR>", { desc = "[T]oggle Code [O]utline" })
	end,
}
