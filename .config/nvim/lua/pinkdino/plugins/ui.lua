-- ~/.config/nvim/lua/pinkdino/plugins/ui.lua

return {
	--Colorschemes
	--https://github.com/rose-pine/neovim
	{
		"rose-pine/neovim",
		lazy = false,
		priority = 1000,
		config = function()	
			require("rose-pine").setup({
				variant = "main",
				--vim.cmd.colorscheme("rose-pine")
			})
		end,
	},

	--https://github.com/vague2k/vague.nvim
	{
		"vague2k/vague.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vague").setup({})
			vim.cmd.colorscheme("vague")
		end,
	},

	--Nvim-tree
	--https://github.com/nvim-tree/nvim-tree.lua
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-tree").setup({
				view = {
					width = 30,
				},
				renderer = {
					group_empty = true,
				}
			})
		end,
	},

	--Lualine
	--https://github.com/nvim-lualine/lualine.nvim
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {"nvim-tree/nvim-web-devicons"},
		config = function()
			require("lualine").setup({
				options = {
					theme = "rose-pine"
				}
			})
		end,
	},

	--Which-key-nvim
	---https://github.com/folke/which-key.nvim
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
			require("which-key").setup({})
		end,
	},
}




