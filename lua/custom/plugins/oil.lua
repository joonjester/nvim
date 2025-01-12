return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	config = function()
		require("oil").setup()
		vim.keymap.set(
			"n",
			"<leader><CR>",
			"<cmd>:Oil<CR>",
			{ noremap = true, silent = true, desc = "Open parent directory" }
		)
	end,
}
