return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	-- opts = {
	-- 	options = {
	-- 		mode = "buffers",
	-- 		separator_style = "slant",
	-- 		hover = {
	-- 			enabled = true,
	-- 			delay = 200,
	-- 			reveal = { "close" },
	-- 		},
	-- 		buffer_selected = {
	-- 			bold = true,
	-- 		},
	-- 	},
	-- },
	config = function()
		require("bufferline").setup({
			options = {
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
			groups = {
				options = {
					toggle_hidden_on_enter = true, -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
				},
				items = {
					{
						name = "Tests", -- Mandatory
						highlight = { underline = true, sp = "blue" }, -- Optional
						priority = 2, -- determines where it will appear relative to other groups (Optional)
						icon = "", -- Optional
						matcher = function(buf) -- Mandatory
							return buf.filename:match("%_test") or buf.filename:match("%_spec")
						end,
					},
					{
						name = "Docs",
						highlight = { undercurl = true, sp = "green" },
						auto_close = false, -- whether or not close this group if it doesn't contain the current buffer
						matcher = function(buf)
							return buf.filename:match("%.md") or buf.filename:match("%.txt")
						end,
						separator = { -- Optional
							style = require("bufferline.groups").separator.tab,
						},
					},
					{
						name = "React",
						highlight = { undercurl = true, sp = "green" },
						auto_close = false, -- whether or not close this group if it doesn't contain the current buffer
						matcher = function(buf)
							return buf.filename:match("%.tsx") or buf.filename:match("%.jsx")
						end,
						separator = { -- Optional
							style = require("bufferline.groups").separator.tab,
						},
					},
				},
			},
		})
	end,
}
