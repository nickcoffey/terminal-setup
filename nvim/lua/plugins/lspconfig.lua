-- NOTE: This is where your plugins related to LSP can be installed.
--  The configuration is done below. Search for lspconfig to find it below.
return {
	-- LSP Configuration & Plugins
	"neovim/nvim-lspconfig",
	dependencies = {
		-- Useful status updates for LSP
		-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
		{ "j-hui/fidget.nvim", opts = {} },
		{
			"folke/lazydev.nvim",
			ft = "lua", -- only load on lua files
			opts = {
				library = {
					-- See the configuration section for more details
					-- Load luvit types when the `vim.uv` word is found
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
	},
	config = function()
		vim.lsp.enable({ "lua_ls", "pyright", "ruff", "ts_ls", "sqlls", "yamlls" })

		local nmap = function(keys, method, func, desc, args)
			if desc then
				desc = "LSP: " .. desc
			end

			local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
			if client:supports_method(method) then
				vim.keymap.set("n", keys, func, { buffer = args.buf, desc = desc })
			end
		end

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("my.lsp", {}),
			callback = function(args)
				nmap("<leader>rn", "textDocument/rename", vim.lsp.buf.rename, "[R]e[n]ame", args)
				nmap("<leader>ca", "textDocument/codeAction", vim.lsp.buf.code_action, "[C]ode [A]ction",
					args)
				nmap(
					"gd",
					"textDocument/definition",
					require("telescope.builtin").lsp_definitions,
					"[G]oto [D]efinition",
					args
				)
				nmap(
					"gr",
					"textDocument/references",
					require("telescope.builtin").lsp_references,
					"[G]oto [R]eferences",
					args
				)
				nmap(
					"gI",
					"textDocument/implementation",
					require("telescope.builtin").lsp_implementations,
					"[G]oto [I]mplementation",
					args
				)
			end,
		})
	end,
}
