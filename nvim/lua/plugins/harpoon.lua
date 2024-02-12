return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():append()
			print("Added buffer to end of harpoon list")
		end, { desc = "Harpoon [A]ppend", noremap = true })

		vim.keymap.set("n", "<leader>p", function()
			harpoon:list():prepend()
			print("Added buffer to beginning of harpoon list")
		end, { desc = "Harpoon [P]repend", noremap = true })

		vim.keymap.set("n", "<C-j>", function()
			harpoon:list():select(1)
		end)
		vim.keymap.set("n", "<C-k>", function()
			harpoon:list():select(2)
		end)
		vim.keymap.set("n", "<C-l>", function()
			harpoon:list():select(3)
		end)
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
	end,
}
