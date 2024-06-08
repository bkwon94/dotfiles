return {
	"supermaven-inc/supermaven-nvim",
	config = function()
		require("supermaven-nvim").setup({
			keymaps = {
				accept_suggestion = "<C-y>",
				clear_suggestion = "<C-x>",
			},
			ignore_filetypes = { cpp = true },
			color = {
				suggestion_color = "#d3d3d3",
				cterm = "LightGray",
			},
		})
	end,
}
