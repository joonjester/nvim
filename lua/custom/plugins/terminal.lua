return {
	"voldikss/vim-floaterm",
	config = function()
		vim.keymap.set("n", "<leader>t", function()
			vim.cmd("FloatermNew")
		end)
		vim.keymap.set("n", "<leader>tt", function()
			vim.cmd("FloatermToggle")
		end)
		vim.keymap.set("n", "<leader>tN", function()
			vim.cmd("FloatermNext")
		end)
		vim.keymap.set("n", "<leader>tP", function()
			vim.cmd("FloatermPrev")
		end)
	end,
}
