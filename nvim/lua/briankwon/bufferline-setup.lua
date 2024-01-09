local bufferline = require("bufferline")
local setup = {

	options = {
		diagnostics = "nvim-lsp",
		mode = "buffers",
		separator_style = "slant",
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
		buffer_selected = {
			bold = true,
		},
	},
}

bufferline.setup(setup)
