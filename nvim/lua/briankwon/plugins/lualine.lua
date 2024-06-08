return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		local colors = {
			blue = "#9BB8DC",
			cyan = "#00C5C7",
			green = "#83AC8E",
			magenta = "#BAACE2",
			yellow = "#FEFB67",
			red = "#E68E8E",
			white = "#C7C7C7",
			fg = "#D1D2D3",
			bg = "#16171E",
			inactive_bg = "#2c3043",
		}

		local my_lualine_theme = {
			normal = {
				a = { bg = "#818596", fg = "#17171b", gui = "bold" },
				b = { bg = "#2e313f", fg = "#6b7089" },
				c = { bg = "#0f1117", fg = "#3e445e" },
			},
			insert = {
				a = { bg = "#84a0c6", fg = "#161821", gui = "bold" },
				b = { bg = "#2e313f", fg = "#6b7089" },
				c = { bg = "#0f1117", fg = "#3e445e" },
			},
			visual = {
				a = { bg = "#b4be82", fg = "#161821", gui = "bold" },
				b = { bg = "#2e313f", fg = "#6b7089" },
				c = { bg = "#0f1117", fg = "#3e445e" },
			},
			replace = {
				a = { bg = "#e2a478", fg = "#161821", gui = "bold" },
				b = { bg = "#2e313f", fg = "#6b7089" },
				c = { bg = "#0f1117", fg = "#3e445e" },
			},
			command = {
				a = { bg = "#a093c7", fg = "#161821", gui = "bold" },
				b = { bg = "#2e313f", fg = "#6b7089" },
				c = { bg = "#0f1117", fg = "#3e445e" },
			},
			terminal = {
				a = { bg = "#89b8c2", fg = "#161821", gui = "bold" },
				b = { bg = "#2e313f", fg = "#6b7089" },
				c = { bg = "#0f1117", fg = "#3e445e" },
			},
			inactive = {
				a = { bg = "#818596", fg = "#17171b" },
				b = { bg = "#2e313f", fg = "#6b7089" },
				c = { bg = "#0f1117", fg = "#3e445e" },
			},
		}

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				theme = "gruvbox-material",
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}
