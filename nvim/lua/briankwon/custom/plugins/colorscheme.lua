return {
	-- Install colorschemes
	{ "shaunsingh/nord.nvim" },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({ variant = "moon" })
		end,
	},
	-- Configure colorscheme
	{ "LazyVim/LazyVim", opts = { colorscheme = "rose-pine" } },
}
