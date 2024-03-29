vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set({ "n", "x", "o" }, "z", "<Plug>(leap-backward-to)")

-- workspace
local workspace = require("workspace")
vim.keymap.set("n", "<leader>t", workspace.tmux_sessions)

-- resize vertical buffers
vim.keymap.set("n", "<C-W>1", "<C-W><")
vim.keymap.set("n", "<C-W>2", "<C-W>>")
