return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	config = function()
		require("oil").setup()
		vim.keymap.set("n", "<C-CR>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	end,
}