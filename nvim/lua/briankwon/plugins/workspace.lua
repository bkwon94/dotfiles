return {
	"sanathks/workspace.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	config = function()
		local workspace = require("workspace")
		require("workspace").setup({
			workspaces = {
				{ name = "Work", path = "~/projects/work", keymap = { "<leader>W" } },
				{ name = "Hobby", path = "~/projects/hobby", keymap = { "<leader>P" } },
			},
			vim.keymap.set("n", "<leader>t", workspace.tmux_sessions),
		})
	end,
}
