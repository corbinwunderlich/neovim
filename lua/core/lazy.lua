local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.g.maplocalleader = "\\"

require("lazy").setup({
	spec = {
		{
			"folke/tokyonight.nvim",
			lazy = false,
			priority = 1000,
		},
		{
			"xiyaowong/transparent.nvim",
		},
		{
			"nvim-telescope/telescope.nvim",
			branch = "0.1.x",
			requires = {
				{
					"nvim-lua/plenary.nvim",
				},
			},
		},
		{
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
		},
		{
			"theprimeagen/harpoon",
		},
		{
			"mbbill/undotree",
		},
		{
			"tpope/vim-fugitive",
		},
		{
			"VonHeikemen/lsp-zero.nvim",
			branch = "v1.x",
		},
		{
			"neovim/nvim-lspconfig",
		},
		{
			"williamboman/mason.nvim",
		},
		{
			"williamboman/mason-lspconfig.nvim",
		},
		{
			"hrsh7th/nvim-cmp",
		},
		{
			"hrsh7th/cmp-nvim-lsp",
		},
		{
			"hrsh7th/cmp-buffer",
		},
		{
			"hrsh7th/cmp-nvim-lsp",
		},
		{
			"hrsh7th/cmp-nvim-lua",
		},
		{
			"saadparwaiz1/cmp_luasnip",
		},
		{
			"L3MON4D3/LuaSnip",
		},
		{
			"rafamadriz/friendly-snippets",
		},
		{
			"windwp/nvim-autopairs",
		},
		{
			"lukas-reineke/indent-blankline.nvim",
		},
		{
			"stevearc/conform.nvim",
		},
		{
			"prichrd/netrw.nvim",
			requires = {
				"nvim-tree/nvim-web-devicons",
			},
		},
		{
			"echasnovski/mini.indentscope",
		},
		{
			"folke/noice.nvim",
			requires = {
				"MunifTanjim/nui.nvim",
				"rcarriga/nvim-notify",
			},
		},
		{
			"nvim-telescope/telescope-file-browser.nvim",
		},
		{
			"epwalsh/obsidian.nvim",
			ft = "markdown",
		},
		{
			"FeiyouG/commander.nvim",
		},
		{
			"stevearc/oil.nvim",
			dependencies = {
				"nvim-tree/nvim-web-devicons",
			},
		},
		{
			"onsails/lspkind.nvim",
		},
		{
			"echasnovski/mini.starter",
		},
		{
			"nvim-telescope/telescope-ui-select.nvim",
		},
		{
			"nvim-lualine/lualine.nvim",
		},
		{
			"MeanderingProgrammer/render-markdown.nvim",
		},

		install = {
			colorscheme = {
				"habamax",
			},
		},

		checker = {
			enabled = true,
		},
	},
})
