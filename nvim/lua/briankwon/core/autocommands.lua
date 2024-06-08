local api = vim.api

api.nvim_create_autocmd("TextYankPost", {
	desc = "highlight yanked text",
	group = api.nvim_create_augroup("yank_highlight", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
