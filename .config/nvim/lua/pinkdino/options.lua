-- ~/.config/nvim/lua/pinkdino/options.lua

local opt = vim.opt

--leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Appearance 
opt.number = true					--show line numbers
opt.relativenumber = true			--show line number relative to position
opt.termguicolors = true			--enable true color on supported terminals
opt.wrap = true						--Wrap long lines 
opt.cursorline = true				--highlight current line 
opt.showmatch = true				--highlight matching brackets
opt.fillchars:append({ eob = " "}) --hide end of buffer sign

--Search
opt.ignorecase = true				--ignore case when searching
opt.smartcase = true				--... unless search has a uppercase
opt.incsearch = true				--show search while typing
opt.hlsearch = true					--highlight all search matches

--Behaivior
opt.mouse = "a"						--mouse support for all modes
opt.clipboard = "unnamedplus"		--use the system clipboard
opt.scrolloff = 8					--keep 8 lines from vertical edges 
opt.sidescrolloff = 10				--keep 10 lines from horizontal edges 
opt.errorbells = false				--disable errobells
opt.backspace = "indent,eol,start"	--backspace behavior
opt.encoding = "UTF-8"				--set encodign
opt.list = false						--show invisible characters



--Formatting
opt.tabstop = 4						--visual spaces for tab
opt.softtabstop = 4					--true spaces for tab
opt.shiftwidth = 4					--space for autoindentation
opt.autoindent = true				--indent from current line
opt.smartindent = true				--setting for autoindent, reacts to syntax

--Buffers
opt.autoread = true					--automatically read buffers that where changed
opt.swapfile = false				--disable swap file	
opt.backup = false					--disable backup file	
