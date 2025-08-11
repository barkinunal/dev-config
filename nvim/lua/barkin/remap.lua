local set = vim.keymap.set

set("n", "<leader>pv", vim.cmd.Ex)
set("n", "<Esc>", "<cmd>nohlsearch<CR>")

set("n", "G", "Gzz")

set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

set("n", "<leader>x", "<cmd>.lua<CR>", { desc = "Execute the current line" })
set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Execute the current file" })

-- set("n", "J", "mzJ`z")
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "{", "{zz")
set("n", "}", "}zz")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

-- greatest remap ever
set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
set({ "n", "v" }, "<leader>y", [["+y]])
set("n", "<leader>Y", [["+Y]])
set("n", "Y", "v$y")
set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
set("i", "<C-c>", "<Esc>")
set("i", "jj", "<Esc>")

set("n", "<leader>f", vim.lsp.buf.format)

set({ "n" }, "<leader>o", "i<CR><Esc>")

set("n", "<leader>k", "<cmd>cprev<CR>zz")
set("n", "<leader>j", "<cmd>cnext<CR>zz")

-- DAYYUM --
-- Is this really needed? I can just use the lsp rename
set("n", "<leader>s", [[:%s/<C-r><C-w>//gI<Left><Left><Left>]])

-- Diagnostic keymaps
set("n", "[d", function()
	vim.diagnostic.goto_prev({ desc = "Go to previous [D]iagnostic message" })
	vim.cmd("normal! zz")
end)
set("n", "]d", function()
	vim.diagnostic.goto_next({ desc = "Go to next [D]iagnostic message" })
	vim.cmd("normal! zz")
end)
set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

set("n", "<leader>o", "i<CR><Esc>")

-- Terminal Mode
set("t", "<Esc><Esc>", "<C-\\><C-n>")

-- These mappings control the size of splits (height/width)
set("n", "<M-,>", "<c-w>5<")
set("n", "<M-.>", "<c-w>5>")
set("n", "<M-t>", "<C-W>+")
set("n", "<M-s>", "<C-W>-")

set("n", "<leader>x", "<cmd>.lua<CR>", { desc = "Execute the current line" })
set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Execute the current file" })

-- Toggle hlsearch if it's on, otherwise just do "enter"
set("n", "<CR>", function()
	---@diagnostic disable-next-line: undefined-field
	if vim.v.hlsearch == 1 then
		vim.cmd.nohl()
		return ""
	else
		return vim.keycode("<CR>")
	end
end, { expr = true })
