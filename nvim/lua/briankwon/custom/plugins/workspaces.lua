return {
	"sanathks/workspace.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		require("workspace").setup({
			workspaces = {
				{ name = "Work", path = "~/projects/work", keymap = { "<leader>W" } },
				{ name = "Hobby", path = "~/projects/hobby", keymap = { "<leader>P" } },
			},
		})
	end,
}
