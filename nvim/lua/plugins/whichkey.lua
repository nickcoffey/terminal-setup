-- Useful plugin to show you pending keybinds.
return {
	"folke/which-key.nvim",
	opts = {},
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		-- document existing key chains
		require("which-key").add({
			{ "<leader>c", desc = "[C]ode" },
			{ "<leader>d", desc = "[D]ocument" },
			{ "<leader>g", desc = "[G]it" },
			{ "<leader>h", desc = "Git [H]unk" },
			{ "<leader>r", desc = "[R]ename" },
			{ "<leader>s", desc = "[S]earch" },
			{ "<leader>t", desc = "[T]oggle" },
			{ "<leader>w", desc = "[W]orkspace" },
		})
		-- register which-key VISUAL mode
		-- required for visual <leader>hs (hunk stage) to work
		require("which-key").add({
			{ "<leader>", desc = "VISUAL <leader>" },
			{ "<leader>h", desc = "Git [H]unk" },
		}, { mode = "v" })
	end,
}
