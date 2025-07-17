-- ~/.config/nvim/lua/pinkdino/plugins/treesitter.lua

--https://github.com/nvim-treesitter/nvim-treesitter
--Treesitter
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c",
				"zig",
				"python",
				"lua",
				"html",
				"css",
				"rust"
			},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
			},
		})
	end,
}
