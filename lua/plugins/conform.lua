require("conform").setup({
	formatters_by_ft = {
		lua = {
			"stylua",
		},
		bash = {
			"beautysh",
		},
		cmake = {
			"cmake_format",
		},
		python = {
			"black",
		},
		json = {
			"prettier",
		},
		javascript = {
			"prettier",
		},
		typescript = {
			"prettier",
		},
		java = {
			"astyle",
		},
		yaml = {
			"prettier",
		},
		nix = {
			"nixfmt",
		},
	},

	format_on_save = {
		lsp_format = "fallback",
		timeout_ms = 500,
	},
})

vim.keymap.set("n", "<leader>fm", function()
	require("conform").format({
		lsp_format = "fallback",
		timeout_ms = 100,
	})

	print(
		[["]]
			.. vim.fn.expand("%")
			.. [["]]
			.. " "
			.. vim.api.nvim_buf_line_count(0)
			.. "L, "
			.. vim.fn.getfsize(vim.api.nvim_buf_get_name(0))
			.. "B formatted"
	)
end)
