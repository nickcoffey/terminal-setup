return {
	"Pocco81/auto-save.nvim",
	config = function()
		require("auto-save").setup({
			enabled = true,
			condition = function(buf)
				if vim.bo[buf].filetype == "harpoon" then
					return false
				end
				return true
			end,
		})
	end,
}
