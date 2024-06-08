return {
	"zbirenbaum/copilot.lua",
	lazy = true,
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = { enabled = true },
			panel = { enabled = true },
		})
	end,
}
