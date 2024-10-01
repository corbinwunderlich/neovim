vim.o.termguicolors = true

require("transparent").setup({
	extra_groups = {
		"NormalFloat",
		"FloatTitle",
		"FloatBorder",
		"TelescopeNormal",
		"TelescopeBorder",
		"TelescopePromptBorder",
		"Pmenu",
		"Float",
	},
})

require("tokyonight").setup({
	transparent = true,

	on_highlights = function(hl, c)
		local border = "#589ED7"

		hl.TelescopePromptTitle = {
			bg = c.bg_light,
		}

		hl.TelescopePromptBorder = {
			fg = border,
		}

		hl.TelescopeSelection = {
			bg = c.bg_light,
		}

		hl.LineNr = {
			fg = "#636e9e",
		}

		hl.LineNrAbove = {
			fg = "#636e9e",
		}

		hl.LineNrBelow = {
			fg = "#636e9e",
		}

		hl.RenderMarkdownCode = {
			hl = c.bg_light,
		}

		hl.RenderMarkdownH1Bg = {
			bg = c.bg_light,
		}

		hl.RenderMarkdownH2Bg = {
			bg = c.bg_light,
		}

		hl.RenderMarkdownH3Bg = {
			bg = c.bg_light,
		}

		hl.RenderMarkdownH4Bg = {
			bg = c.bg_light,
		}

		hl.RenderMarkdownH5Bg = {
			bg = c.bg_light,
		}

		hl.RenderMarkdownH6Bg = {
			bg = c.bg_light,
		}
	end,
})

vim.cmd([[colorscheme tokyonight]])
vim.cmd([[TransparentEnable]])

if vim.g.neovide then
	vim.o.guifont = "JetBrainsMono NF SemiBold:h9"

	vim.g.neovide_transparency = 0
	vim.g.neovide_background_color = "#191919"

	vim.g.neovide_refresh_rate = 165

	vim.g.neovide_cursor_animation_length = 0.06
end
