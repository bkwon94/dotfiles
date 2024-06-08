local setup = {
	plugins = {
		marks = false, -- shows a list of your marks on ' and `
		registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
		-- the presets plugin, adds help for a bunch of default keybindings in Neovim
		-- No actual key bindings are created
		spelling = {
			enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
			suggestions = 20, -- how many suggestions should be shown in the list?
		},
		presets = {
			operators = false, -- adds help for operators like d, y, ...
			motions = false, -- adds help for motions
			text_objects = false, -- help for text objects triggered after entering an operator
			windows = false, -- default bindings on <c-w>
			nav = false, -- misc bindings to work with windows
			z = false, -- bindings for folds, spelling and others prefixed with z
			g = false, -- bindings for prefixed with g
		},
	},
	-- add operators that will trigger motion and text object completion
	-- to enable all native operators, set the preset / operators plugin above
	operators = { gc = "Comments" },
	key_labels = {
		-- override the label used to display some keys. It doesn't effect WK in any other way.
		-- For example:
		-- ["<space>"] = "SPC",
		-- ["<cr>"] = "RET",
		-- ["<tab>"] = "TAB",
	},
	icons = {
		breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
		separator = "➜", -- symbol used between a key and it's label
		group = "+", -- symbol prepended to a group
	},
	popup_mappings = {
		scroll_down = "<c-d>", -- binding to scroll down inside the popup
		scroll_up = "<c-u>", -- binding to scroll up inside the popup
	},
	window = {
		border = "none", -- none, single, double, shadow
		position = "bottom", -- bottom, top
		margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]. When between 0 and 1, will be treated as a percentage of the screen size.
		padding = { 1, 2, 1, 2 }, -- extra window padding [top, right, bottom, left]
		winblend = 0, -- value between 0-100 0 for fully opaque and 100 for fully transparent
		zindex = 1000, -- positive value to position WhichKey above other floating windows.
	},
	layout = {
		height = { min = 4, max = 25 }, -- min and max height of the columns
		width = { min = 20, max = 50 }, -- min and max width of the columns
		spacing = 3, -- spacing between columns
		align = "left", -- align columns left, center or right
	},
	ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
	hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "^:", "^ ", "^call ", "^lua " }, -- hide mapping boilerplate
	show_help = true, -- show a help message in the command line for using WhichKey
	show_keys = true, -- show the currently pressed key and its label as a message in the command line
	triggers = "auto", -- automatically setup triggers
	-- triggers = {"<leader>"} -- or specifiy a list manually
	-- list of triggers, where WhichKey should not wait for timeoutlen and show immediately
	triggers_blacklist = {
		-- list of mode / prefixes that should never be hooked by WhichKey
		-- this is mostly relevant for keymaps that start with a native binding
		i = { "j", "k" },
		v = { "j", "k" },
	},
	-- disable the WhichKey popup for certain buf types and file types.
	-- Disabled by default for Telescope
	disable = {
		buftypes = {},
		filetypes = {},
	},
}

local opts = {
	mode = "n", -- NORMAL mode
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = true, -- use `nowait` when creating keymaps
}
local mappings = {
	["e"] = { "<cmd>NvimTreeToggle<CR>", "Explorer" },
	["w"] = { "<cmd>w!<CR>", "Save" },
	["q"] = { "<cmd>confirm q<CR>", "Quit" },
	--[[ ["c"] = { "<cmd>bdelete<CR>", "Close Buffer" }, ]]
	["t"] = { "Show tmux sessions" },
	s = {
		name = "Split Actions/Session Management",
		v = { "<cmd>vsplit<cr>", "Vertical split" },
		h = { "<cmd>split<cr>", "Horizontal split" },
		c = { "<cmd>close<cr>", "Close split" },
		r = { "<cmd>SessionRestore<cr>", "Restore session" },
		s = { "<cmd>SessionSave<cr>", "Save session" },
	},

	C = {
		name = "Copilot Chat",
		c = { "<cmd>CopilotChatCommit<CR>", "Write commit for code", mode = { "n", "v" } },
		o = { "<cmd>CopilotChatOpen<CR>", "Open Chat window" },
		e = { "<cmd>CopilotChatExplain<CR>", "Explain selection of code", mode = { "n", "v" } },
		r = { "<cmd>CopilotChatReview<CR>", "Review selection of code", mode = { "n", "v" } },
		d = { "<cmd>CopilotChatDocs<CR>", "Write doc/doctstrings for code", mode = { "n", "v" } },
		f = { "<cmd>CopilotChatFix<CR>", "Fix bugs in code", mode = { "n", "v" } },
		x = { "<cmd>CopilotChatFixDiagnostic<CR>", "Fix diagnositcs in code", mode = { "n", "v" } },
		t = { "<cmd>CopilotChatTests<CR>", "Tests for this code", mode = { "n", "v" } },
		O = { "<cmd>CopilotChatOptimize<CR>", "Optimize" },
	},
	g = {
		name = "Git",
		g = { "<cmd>G<cr>", "Git" },
	},
	f = {
		name = "Telescope Project Search",
		f = { "<cmd>Telescope find_files<cr>", "Find files", mode = { "n" } },
		r = { "Find recent files" },
		s = { "Find files with string" },
		t = { "Find todo/tags" },
	},
	n = {
		name = "Nvim/Noice",
		c = { "<cmd>edit ~/.config/nvim/init.lua<cr>", "Edit nvim config", mode = { "n" } },
		d = "Dismiss noice message",
	},
	b = {
		name = "Buffers",
		j = { "<cmd>BufferLinePick<cr>", "Jump" },
		f = { "<cmd>Telescope buffers previewer=false<cr>", "Find" },
		b = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
		n = { "<cmd>BufferLineCycleNext<cr>", "Next" },
		W = { "<cmd>noautocmd w<cr>", "Save without formatting (noautocmd)" },
		c = { "<cmd>bd<cr>", "Close buffer" },
		-- w = { "<cmd>BufferWipeout<cr>", "Wipeout" }, -- TODO: implement this for bufferline
		e = {
			"<cmd>BufferLinePickClose<cr>",
			"Pick which buffer to close",
		},
		h = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
		l = {
			"<cmd>BufferLineCloseRight<cr>",
			"Close all to the right",
		},
		D = {
			"<cmd>BufferLineSortByDirectory<cr>",
			"Sort by directory",
		},
		L = {
			"<cmd>BufferLineSortByExtension<cr>",
			"Sort by language",
		},
	},
	h = {
		name = "Harpoon",
		a = "Add file",
		c = "Clear all",
		h = "Toggle menu",
		p = "Toggle previous",
		n = "Toggle next",
		o = "Open menu",
		r = "Remove",
	},
	x = {
		name = "Trouble/Error",
		x = "Toggle",
		d = "Document Diagnostics",
		w = "Workspace Diagnostics",
		l = "Location List",
		q = "Quickfix List",
	},
	r = {
		name = "Replace/Substitute",
		r = { "<cmd>lua require('substitute').operator()<cr>", "Replace with motion" },
		R = { "<cmd>lua require('substitute').line()<cr>", "Replace line" },
	},
}

local vmappings = {
	i = {
		p = "Highlight inside paragraph",
		w = "Highlight inside word",
		["'"] = "Highlight inside '",
		['"'] = 'Highlight inside "',
		["{"] = "Highlight inside {}",
		["["] = "Highlight inside []",
		["("] = "Highlight inside ()",
		["="] = "Select inner part of assignment",
		a = "Select inner part of argument",
		i = "Select inner part of a conditional",
		l = "Select inner part of a loop",
		f = "Select inner part of function call",
		m = "Select inner part of function/method",
		c = "Select inner part of class",
	},
	a = {
		p = "Highlight around paragraph",
		w = "Highlight around word",
		["'"] = "Highlight around '",
		['"'] = 'Highlight around "',
		["{"] = "Highlight around {}",
		["["] = "Highlight around []",
		["("] = "Highlight around ()",
		["="] = "Select outer part of assignment",
		a = "Select outer part of argument",
		i = "Select outer part of a conditional",
		l = "Select outer part of a loop",
		f = "Select outer part of function call",
		m = "Select outer part of function/method",
		c = "Select outer part of class",
	},
	l = {
		["="] = "Select left side of assignment",
	},
	r = {
		name = "Replace/Substitute",
		n = "Smart replace",
	},
	c = {
		name = "Code Snap",
		c = { "<cmd>CodeSnap<cr>", "Screen shot code into clipboard" },
		s = { "<cmd>CodeSnapSave<cr>", "Screen shot code into path" },
	},
}
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		require("which-key").setup(setup)
		require("which-key").register(mappings, opts)
		require("which-key").register(vmappings, opts)
	end,
}
