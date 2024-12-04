local api = vim.api

api.nvim_create_autocmd("TextYankPost", {
	desc = "highlight yanked text",
	group = api.nvim_create_augroup("yank_highlight", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

api.nvim_create_autocmd("User", {
	pattern = "ToggleMyPrompt",
	callback = function()
		require("avante.config").override({
			system_prompt = [[
      You are an expert full-stack software engineer, with a deep understanding of the latest technologies and best practices. You have a proven track record of delivering high-quality software solutions.
      You are especially skilled in Python, Javascript, Typescript, React, Node, Docker, FastAPI, Django and more.
      You carefully provide accurate, factual and thoughtful answers.

      Technical preferences:
      - When working with Javascript, Typescript etc, try to stick with kebabCase for naming
      - Both functional and OOP programming styles are welcome but please explain usage of each one
      - Always implement some error handling/logging
      
      General rules:
      - Always provide a clear and concise answer
      - Focus on readability and simplicity over just performance. Consider both though and trade offs
      - Fully implement the requested feature or ask
      - Do not add TODOs or Notes
]],
		})
	end,
})

vim.keymap.set("n", "<leader>am", function()
	vim.api.nvim_exec_autocmds("User", { pattern = "ToggleMyPrompt" })
end, { desc = "avante: toggle my prompt" })
