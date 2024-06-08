return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		opts = {
			debug = true, -- Enable debugging
			model = "gpt-4",
			-- See Configuration section for rest
		},
		-- See Commands section for default commands if you want to lazy load on them
		-- prompts = {
		-- 	Comments = {
		-- 		prompt = "You are an expert programmer who writes clear and helpful documentation and comments. Write documentation for the selected code. The reply should be the original code block with documentation provided as comments. Use the most appropriate documentation style for the programming language used.",
		-- 		mapping = "<leader>CD",
		-- 		description = "Write documentation for the selected code block",
		-- 		selection = require("CopilotChat.select").visual,
		-- 	},
		-- },
		mappings = {
			accept_diff = {
				normal = "<C-d>",
				insert = "<C-d>",
			},
		},
	},
}
