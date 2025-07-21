-- ~/.config/nvim/lua/pinkdino/plugins/autopairs.lua

return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config= function()
		require("nvim-autopairs").setup({})
	end,
}
