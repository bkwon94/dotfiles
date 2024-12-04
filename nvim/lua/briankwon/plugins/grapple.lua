return {
	"cbochs/grapple.nvim",
	opts = {
		scope = "git", -- also try out "git_branch"
		icons = true, -- setting to "true" requires "nvim-web-devicons"
		status = true,
	},
	event = { "BufReadPost", "BufNewFile" },
	cmd = "Grapple",
	keys = {
		{ "<leader>ha", "<cmd>Grapple toggle<cr>", desc = "Tag a file" },
		{ "<leader>hh", "<cmd>Grapple toggle_tags<cr>", desc = "Toggle tags menu" },

		{ "<leader>hf", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
		{ "<leader>hs", "<cmd>Grapple select index=2<cr>", desc = "Select second tag" },
		{ "<leader>ht", "<cmd>Grapple select index=3<cr>", desc = "Select third tag" },
		{ "<leader>hF", "<cmd>Grapple select index=4<cr>", desc = "Select fourth tag" },

		{ "<leader>hn", "<cmd>Grapple cycle_tags next<cr>", desc = "Go to next tag" },
		{ "<leader>hp", "<cmd>Grapple cycle_tags prev<cr>", desc = "Go to previous tag" },
	},
}
