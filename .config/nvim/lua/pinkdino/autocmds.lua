-- ~/.config/nvim/lua/pinkdino/autocmds.lua

local api = vim.api

--  Highligh current yank text

local yank_group = api.nvim_create_augroup("pinkdino_Highlight", { clear = true})

api.nvim_create_autocmd("TextYankPost", {
	group = yank_group ,
	pattern = "*" ,
	desc = "yank highlight" ,
	callback = function() 
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 300})
	end,
})

