-- ~/.config/nvim/lua/pinkdino/keymaps.lua

local map = vim.keymap.set

--Saving 
map("n", "<leader>w", "<cmd>w<cr>", {desc = "Save file"})
map("n", "<leader>q", "<cmd>q!<cr>", {desc = "Save file"})

--Windows navigation and resizing
map("n", "<C-h>", "<C-w>h", {desc = "Move left"})
map("n", "<C-j>", "<C-w>j", {desc = "Move down"})
map("n", "<C-k>", "<C-w>k", {desc = "Move right"})
map("n", "<C-l>", "<C-w>l", {desc = "Move up"})

map("n", "<C-S-Left>", "<cmd>vertical resize -2<cr>", {desc = "Resize left"})
map("n", "<C-S-Down>", "<cmd>resize -2<cr>", {desc = "Resize down"})
map("n", "<C-S-Up>", "<cmd>resize +2<cr>", {desc = "Resize up"})
map("n", "<C-S-Right>", "<cmd>vertical resize +2<cr>", {desc = "Resize to the right"})

--Center Screen on jumps
map("n", "n", "nzzzv", {desc = "Next search centered "})
map("n", "N", "Nzzzv", {desc = "Prev search centered "})
map("n", "<C-d>", "<C-d>zz", {desc = "Center half page down"})
map("n", "<C-u>", "<C-u>zz", {desc = "Center half page up"})

--Buffer 
map("n", "<TAB>", "<cmd>bn<cr>", {desc = "Next buffer"})
map("n", "<S-TAB>", "<cmd>bp<cr>", {desc = "Previous buffer"})
map("n", "<leader>c", "<cmd>bdelete<cr>", {desc = "Close current buffer"})

--Text 
map("n", "<A-j>", ":m .+1<CR>==", {desc = "Change current line with line below"})
map("n", "<A-k>", ":m .-2<CR>==", {desc = "Change current line with line below"})
map("v", "<A-j>", ":m '>+1<CR>gv=gv", {desc = "Change current line with line below"})
map("v", "<A-k>", ":m '>-2<CR>gv=gv", {desc = "Change current line with line above"})

map("n", "<leader>nh", "<cmd>nohlsearch<cr>", {desc = "Clear highlight"})
map("n", "Y", "y$", {desc = "Yank to the eol"})

--PLUGINS
--Nvim-tree
map("n", "<leader>t", "<cmd>NvimTreeToggle<cr>", {desc = "Toggle Nvim-tree"})
map("n", "<leader>e", "<cmd>NvimTreeFocus<cr>", {desc = "Toggle Nvim-tree"})

--Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find help tags" })

--Lsp
map("n", "gl", vim.diagnostic.open_float, {desc = "Open lsp diagnostics"})
map("n", "<leader>gl", vim.diagnostic.setloclist, {desc = "Set lsp diagnostics to list form"})

