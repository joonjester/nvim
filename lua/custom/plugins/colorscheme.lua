return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			custom_highlights = function()
				return {
					LineNr = { fg = "#b8c0e0" },
				}
			end,
		})
		vim.cmd("colorscheme catppuccin")
	end,
}
