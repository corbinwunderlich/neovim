local colors = {
	blue = "#80a0ff",
	cyan = "#79dac8",
	black = "#080808",
	white = "#ffffff",
	red = "#ff5189",
	violet = "#d183e8",
	grey = "#303030",
	green = "5ed67a",
}

local minimal_theme = {
	normal = {
		a = { fg = colors.violet, bg = "#NONE" },
		b = { fg = colors.white, bg = "#NONE" },
		c = { fg = colors.white },
	},

	insert = { a = { fg = colors.green, bg = "#NONE" } },
	visual = { a = { fg = colors.cyan, bg = "#NONE" } },
	replace = { a = { fg = colors.red, bg = "#NONE" } },

	inactive = {
		a = { fg = colors.white, bg = "#NONE" },
		b = { fg = colors.white, bg = "#NONE" },
		c = { fg = colors.white },
	},
}

local function getWords()
	return vim.fn.wordcount().words
end

require("lualine").setup({
	options = {
		theme = minimal_theme,
		component_separators = "",
		section_separators = "",
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = {
			"branch",
			{
				"diagnostics",
				source = { "nvim" },
				sections = { "error" },
				diagnostics_color = { error = { fg = colors.red } },
			},
			{
				"diagnostics",
				source = { "nvim" },
				sections = { "warn" },
				diagnostics_color = { error = { fg = colors.yellow } },
			},
		},
		lualine_c = {
			"%=", --[[ add your center compoentnts here in place of this comment ]]
		},
		lualine_x = {},
		lualine_y = { getWords, "encoding", "filetype" },
		lualine_z = {},
	},
	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "location" },
	},
	tabline = {},
	extensions = {},
})
