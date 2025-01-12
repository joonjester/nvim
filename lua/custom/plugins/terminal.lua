return {
	"voldikss/vim-floaterm",
	config = function()
		vim.keymap.set("n", "<C-t>", "<cmd>:FloatermToggle<CR>")
		vim.keymap.set("t", "<C-t>", "<cmd>:FloatermToggle<CR>")
		vim.keymap.set("t", "<C-n>", "<cmd>:FloatermNew<CR>")
		vim.keymap.set("t", "<C-j>", "<cmd>:FloatermNext<CR>")
		vim.keymap.set("t", "<C-k>", "<cmd>:FloatermPrev<CR>")
		vim.keymap.set("t", "<C-c>", "<cmd>:FloatermKill<CR>")
	end,
}
