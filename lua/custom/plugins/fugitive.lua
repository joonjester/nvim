return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>gt", vim.cmd.Git)

		vim.keymap.set("n", "<leader>ga", function()
			vim.cmd.Git("add .")
		end)

		vim.keymap.set("n", "<leader>gc", function()
			local message = vim.fn.input("Commit message: ")
			vim.cmd('Git commit -m "' .. message .. '"')
		end)

		vim.keymap.set("n", "<leader>gl", function()
			vim.cmd("Git log --oneline")
		end)

		local bufnr = vim.api.nvim_get_current_buf()
		local opts = { buffer = bufnr, remap = false }
		vim.keymap.set("n", "<leader>p", function()
			vim.cmd.Git({ "pull", "--rebase" })
		end, opts)
		vim.keymap.set("n", "<leader>P", function()
			vim.cmd.Git("push")
		end, opts)
	end,
}
