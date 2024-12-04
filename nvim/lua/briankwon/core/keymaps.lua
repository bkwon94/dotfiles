vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local keymap = vim.keymap
-- Move lines up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- vim.keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "n", "nzzzv") -- move next in search
keymap.set("n", "nn", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "N", "Nzzzv") -- move prev in search
keymap.set({ "n", "x", "o" }, "z", "<Plug>(leap-backward-to)")

-- resize vertical buffers
keymap.set("n", "<C-W>1", "<C-W><")
keymap.set("n", "<C-W>2", "<C-W>>")

-- dismiss noice plugin messages
keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss noice message" })

-- Spectre
keymap.set("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', {
	desc = "Toggle Spectre",
})
keymap.set("n", "<leader>Sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
	desc = "Search current word",
})
keymap.set("v", "<leader>Sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
	desc = "Search current word",
})
keymap.set("n", "<leader>Sf", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
	desc = "Search on current file",
})

-- Toggle line breakpoint on the current line
vim.api.nvim_set_keymap("n", "<leader>T", "<Plug>VimspectorToggleBreakpoint", { noremap = true, silent = true })
-- Toggle conditional breakpoint on the current line
vim.api.nvim_set_keymap(
	"n",
	"<leader>Tt",
	"<Plug>VimspectorToggleConditionalBreakpoint",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>Tf", "<Plug>VimspectorAddFunctionBreakpoint", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Tc", "<Plug>VimspectorContinue", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Ts", "<Plug>VimspectorStop", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Tr", "<Plug>VimspectorRestart", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>To", "<Plug>VimspectorStepOver", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>Ti", "<Plug>VimspectorStepInto", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>TO", "<Plug>VimspectorStepOut", { noremap = true, silent = true })

-- Lua
--vim.keymap.set("n", "<leader>m", require("grapple").toggle)
--vim.keymap.set("n", "<leader>M", require("grapple").toggle_tags)

-- User command
--vim.keymap.set("n", "<leader>1", "<cmd>Grapple select index=1<cr>")
