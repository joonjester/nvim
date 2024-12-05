return {
	"voldikss/vim-floaterm",
	config = function()
		vim.keymap.set("n", "<leader>to", function()
			vim.cmd("FloatermNew")
		end)
		vim.keymap.set("n", "<leader>tt", function()
			vim.cmd("FloatermToggle")
		end)
		vim.keymap.set("n", "<leader>td", function()
			vim.cmd("FloatermKill")
			vim.cmd("FloatermToggle")
		end)
		vim.keymap.set("n", "<leader>tc", function()
			vim.cmd("FloatermKill")
		end)
		vim.keymap.set("n", "<leader>tn", function()
			vim.cmd("FloatermNext")
		end)
		vim.keymap.set("n", "<leader>tp", function()
			vim.cmd("FloatermPrev")
		end)
	end,
}
