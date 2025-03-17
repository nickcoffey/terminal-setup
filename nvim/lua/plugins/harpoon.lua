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

		vim.keymap.set("n", "<leader>j", function()
			harpoon:list():select(1)
		end, { desc = "Open 1st Harpooned File" })
		vim.keymap.set("n", "<leader>k", function()
			harpoon:list():select(2)
		end, { desc = "Open 2nd Harpooned File" })
		vim.keymap.set("n", "<leader>l", function()
			harpoon:list():select(3)
		end, { desc = "Open 3rd Harpooned File" })
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Open Harpoon Menu" })
	end,
}
