return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	config = function()
		require("oil").setup({
			view_options = {
				-- Show files and directories that start with "."
				show_hidden = true,
				-- This function defines what is considered a "hidden" file
				is_hidden_file = function(name)
					local m = name:match("^%.")
					return m ~= nil
				end,
			},
		})
		vim.keymap.set(
			"n",
			"<leader><CR>",
			"<cmd>:Oil<CR>",
			{ noremap = true, silent = true, desc = "Open parent directory" }
		)
	end,
}
