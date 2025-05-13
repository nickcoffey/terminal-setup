return {
	"nvimtools/none-ls.nvim",
	version = "*",
	config = function()
		local null_ls = require("null-ls")
		local venv_path =
		'import sys; sys.path.append("/opt/homebrew/lib/python3.13/site-packages"); import pylint_venv; pylint_venv.inithook(force_venv_activation=True, quiet=True)'
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.pylint.with({
					extra_args = { "--init-hook", venv_path },
				}),
			},
		})
	end,
}
