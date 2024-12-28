require("conform").setup({
	formatters_by_ft = {
		lua = {
			"stylua",
		},
		java = {
			"astyle",
		},
		nix = {
			"alejandra",
		},
	},

	format_on_save = function(bufnr)
		-- Disable with a global or buffer-local variable
		if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
			return
		end

		return { timeout_ms = 500, lsp_format = "fallback" }
	end,
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

vim.api.nvim_create_user_command("FormatDisable", function(args)
	if args.bang then
		-- FormatDisable! will disable formatting just for this buffer
		vim.b.disable_autoformat = true
	else
		vim.g.disable_autoformat = true
	end
end, {
	desc = "Disable autoformat-on-save",
	bang = true,
})
vim.api.nvim_create_user_command("FormatEnable", function()
	vim.b.disable_autoformat = false
	vim.g.disable_autoformat = false
end, {
	desc = "Re-enable autoformat-on-save",
})

vim.keymap.set("n", "<leader>fe", ":FormatEnable<CR>")
vim.keymap.set("n", "<leader>fd", ":FormatDisable<CR>")
