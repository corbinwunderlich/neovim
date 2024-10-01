vim.keymap.set("n", "<leader>o", ":ObsidianQuickSwitch<CR>")
vim.keymap.set("n", "<leader>os", ":ObsidianSearch<CR>")
vim.keymap.set("n", "<leader>ch", ":ObsidianToggleCheckbox")
vim.keymap.set("n", "<leader>dl", ":ObsidianToday")

require("obsidian").setup({
	workspaces = {
		{
			name = "ninth-grade",
			path = "~/Documents/ninth-grade",
		},
	},

	daily_notes = {
		folder = "dailies",
		date_format = "%Y.%m.%d",
	},

	log_level = vim.log.levels.OFF,

	ui = {
		checkboxes = {
			[" "] = {
				order = 1,
				char = "󰄱",
				hl_group = "ObsidianTodo",
			},
			["x"] = {
				order = 2,
				char = "",
				hl_group = "ObsidianDone",
			},
			["!"] = {
				order = 3,
				char = "",
				hl_group = "ObsidianImportant",
			},
		},
	},
})

require("render-markdown").setup({
	render_modes = { "n", "c", "v", "i" },

	heading = {
		border = true,
		above = " ",
		below = " ",
		position = "inline",
		sign = false,
	},

	checkbox = {
		unchecked = {
			icon = " ",
		},
		checked = {
			icon = "󰡖 ",
		},
	},

	bullet = {
		right_pad = 1,
	},
})

require("render-markdown").enable()
