-- ~/.config/nvim/lua/pinkdino/plugins/masonlsp.lua

return {

	--https://github.com/mason-org/mason.nvim
	--Mason
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({})
		end,
	},

	--Mason-lsp bridge
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {"williamboman/mason.nvim", "neovim/nvim-lspconfig"},
	},

	--Lsp-config
	{
		"neovim/nvim-lspconfig",
		event = {"BufReadPre", "BufNewFile"},
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"hrst7th/nvim-cmp",
		},
		config = function()
			local lspconfig = require("lspconfig")

			--Get autocompletion from cmp-nvim
			--Get language servers from mason
			local mason_lspconfig = require("mason-lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			--Load the servers
			mason_lspconfig.setup({
				function(server_name)
					lspconfig[server_name].setup({
						capabilities = capabilities,
					})
				end,
			})
		end,
	},
}

