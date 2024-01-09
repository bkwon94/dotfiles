local bufferline = require("bufferline")
local setup = {
	buffer_selected = {
		bold = true,
	},
	options = {
		diagnostics = "nvim-lsp",
		mode = "buffers",
		separator_style = "slant",
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
	},
}

bufferline.setup(setup)
