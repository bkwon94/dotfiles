return {

	-- {
	-- 	"oahlen/iceberg.nvim",
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		-- load the colorscheme here
	-- 		vim.cmd([[colorscheme iceberg]])
	-- 	end,
	-- },
	-- {
	-- 	"neanias/everforest-nvim",
	-- 	version = false,
	-- 	lazy = false,
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	-- Optional; default configuration will be used if setup isn't called.
	-- 	config = function()
	-- 		vim.cmd([[colorscheme everforest]])
	-- 	end,
	-- },
	-- {
	-- 	"f4z3r/gruvbox-material.nvim",
	-- 	name = "gruvbox-material",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- },
	-- {
	-- 	"ellisonleao/gruvbox.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.o.background = "dark"
	-- 		vim.cmd([[colorscheme gruvbox]])
	-- 	end,
	-- 	opts = ...,
	-- },
	-- {
	-- 	"rebelot/kanagawa.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme kanagawa-lotus]])
	-- 	end,
	-- },

	"0xstepit/flow.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require("flow").setup({
			transparent = true,
			fluo_color = "pink",
			mode = "normal",
			aggressive_spell = false,
		})
		vim.cmd("colorscheme flow")
	end,
}
