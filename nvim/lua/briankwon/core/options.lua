local opt = vim.opt
vim.o.nu = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.number = true
opt.cmdheight = 4
opt.relativenumber = true

opt.incsearch = true
opt.hlsearch = false
opt.scrolloff = 8

-- disable line wrap
opt.wrap = false

opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, it will become case-sensitive

opt.cursorline = true -- highlight the current cursor line

-- term gui colors
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard

opt.swapfile = false -- don't use swapfile

opt.showmode = false -- don't show mode

opt.mouse = "a" -- enable mouse support

vim.g.vimspector_enable_mappings = "HUMAN"

opt.laststatus = 3
opt.splitkeep = "screen"
